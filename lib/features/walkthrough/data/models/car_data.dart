class CarData {
  CarData({
    required this.position,
    required this.imagePath,
  });
  final CarPosition position;
  final String imagePath;
}

enum CarPosition {
  left,
  right,
}
