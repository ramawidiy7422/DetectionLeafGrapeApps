class DetectionResult {
  final int? id;
  final String imagePath;
  final String label;

  DetectionResult({
    this.id,
    required this.imagePath,
    required this.label,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'imagePath': imagePath,
      'label': label,
    };
  }
}