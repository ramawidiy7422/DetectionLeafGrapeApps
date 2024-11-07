import 'dart:io';

import 'package:flutter/material.dart';
import 'package:projectskripsideteksi/data/model/result_item.dart';
import 'package:projectskripsideteksi/databases/sqlite_helper.dart';

class HamaScreen extends StatefulWidget {
  const HamaScreen({Key? key}) : super(key: key);

  @override
  _HamaScreenState createState() => _HamaScreenState();
}

class _HamaScreenState extends State<HamaScreen> {
  late Future<List<DetectionResult>> _resultsFuture;

  @override
  void initState() {
    super.initState();
    _resultsFuture = DatabaseHelper().getResults();
  }

  void _refreshResults() {
    setState(() {
      _resultsFuture = DatabaseHelper().getResults();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("History Deteksi"),
        backgroundColor: Colors.green,
        actions: [
          IconButton(
            icon: const Icon(Icons.delete),
            onPressed: () async {
              bool? confirm = await showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: const Text("Konfirmasi"),
                    content: const Text("Apakah Anda yakin ingin menghapus semua history?"),
                    actions: [
                      TextButton(
                        onPressed: () => Navigator.of(context).pop(false),
                        child: const Text("Tidak"),
                      ),
                      TextButton(
                        onPressed: () => Navigator.of(context).pop(true),
                        child: const Text("Ya"),
                      ),
                    ],
                  );
                },
              );

              if (confirm == true) {
                await DatabaseHelper().deleteAllResults();
                _refreshResults();
              }
            },
          )
        ],
      ),
      backgroundColor: Colors.green[50],
      body: FutureBuilder<List<DetectionResult>>(
        future: _resultsFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }
          if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return const Center(child: Text("Tidak ada data history."));
          }

          final results = snapshot.data!;

          return ListView.builder(
            itemCount: results.length,
            itemBuilder: (context, index) {
              final result = results[index];
              return Card(
                margin: const EdgeInsets.all(10.0),
                child: ListTile(
                  leading: Image.file(File(result.imagePath)),
                  title: Text(result.label),
                  trailing: IconButton(
                    icon: const Icon(Icons.delete),
                    onPressed: () async {
                      bool? confirm = await showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: const Text("Konfirmasi"),
                            content: const Text("Apakah Anda yakin ingin menghapus item ini?"),
                            actions: [
                              TextButton(
                                onPressed: () => Navigator.of(context).pop(false),
                                child: const Text("Tidak"),
                              ),
                              TextButton(
                                onPressed: () => Navigator.of(context).pop(true),
                                child: const Text("Ya"),
                              ),
                            ],
                          );
                        },
                      );

                      if (confirm == true) {
                        await DatabaseHelper().deleteResult(result.id);
                        _refreshResults();
                      }
                    },
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}