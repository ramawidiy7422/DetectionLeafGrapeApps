import 'package:projectskripsideteksi/data/model/result_item.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DatabaseHelper {
  static final DatabaseHelper _instance = DatabaseHelper._internal();
  static Database? _database;

  factory DatabaseHelper() {
    return _instance;
  }

  DatabaseHelper._internal();

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDatabase();
    return _database!;
  }

  Future<Database> _initDatabase() async {
    final databasePath = await getDatabasesPath();
    final path = join(databasePath, 'detection_results.db');

    return await openDatabase(
      path,
      version: 1,
      onCreate: (db, version) {
        return db.execute(
          'CREATE TABLE results(id INTEGER PRIMARY KEY AUTOINCREMENT, imagePath TEXT, label TEXT, confidence REAL)',
        );
      },
    );
  }

  Future<void> insertResult(DetectionResult result) async {
    final db = await database;
    await db.insert(
      'results',
      result.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  Future<List<DetectionResult>> getResults() async {
    final db = await database;
    final List<Map<String, dynamic>> maps = await db.query('results');

    return List.generate(maps.length, (i) {
      return DetectionResult(
        id: maps[i]['id'],
        imagePath: maps[i]['imagePath'],
        label: maps[i]['label'],
      );
    });
  }

  Future<void> deleteAllResults() async {
    final db = await database;
    await db.delete('results');
  }

  Future<void> deleteResult(int? id) async {
    final db = await database;
    await db.delete(
      'results',
      where: 'id = ?',
      whereArgs: [id],
    );
    print('Deleted result with id: $id'); // Debugging log
  }
}