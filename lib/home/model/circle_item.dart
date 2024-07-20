final class CircleItem {
  String itemUrl;
  int itemOrder = 0;
  double opacity;
  bool isClicked = false;

  CircleItem(
      {isClicked=false,
      required this.itemUrl,
      required this.itemOrder,
      required this.opacity});
}
