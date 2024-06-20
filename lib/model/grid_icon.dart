final class GridIcon {
  String? imageUrl;
  int? itemIndex;

  GridIcon({
    this.imageUrl,
    this.itemIndex,
  });

  GridIcon copyWith({
    String? imageUrl,
    int? itemIndex,
  }) {
    return GridIcon(
      imageUrl: imageUrl ?? this.imageUrl,
      itemIndex: itemIndex ?? this.itemIndex,
    );
  }

  factory GridIcon.fromJson(Map<String, dynamic> json) {
    return GridIcon(
      imageUrl: json['imageUrl'] as String?,
      itemIndex: json['itemIndex'] as int?,
    );
  }
}