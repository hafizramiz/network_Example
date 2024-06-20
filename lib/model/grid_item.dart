final class GridItem {
  final String? imageUrl;
  final bool isCorrect;
  final int index;
  double opacity;
  bool isClikced=false;

  GridItem(
      { isClikced=false,
      required this.opacity,
      required this.index,
      required this.isCorrect,
      required this.imageUrl});

  @override
  String toString() {
    return 'GridItem(index: $index, isCorrect: $isCorrect, imageUrl: $imageUrl)';
  }
}
