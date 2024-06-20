import 'package:network_example/model/base_network_model.dart';

final class GridIconModel extends IBaseNetworkModel<GridIconModel> {
  int? gridIconId;
  int? questionId;
  String? imageUrl;
  int? itemIndex;
  String? questions;

  GridIconModel({
    this.gridIconId,
    this.questionId,
    this.imageUrl,
    this.itemIndex,
    this.questions,
  });

  GridIconModel copyWith({
    int? gridIconId,
    int? questionId,
    String? imageUrl,
    int? itemIndex,
    String? questions,
  }) {
    return GridIconModel(
      gridIconId: gridIconId ?? this.gridIconId,
      questionId: questionId ?? this.questionId,
      imageUrl: imageUrl ?? this.imageUrl,
      itemIndex: itemIndex ?? this.itemIndex,
      questions: questions ?? this.questions,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'gridIconId': gridIconId,
      'questionId': questionId,
      'imageUrl': imageUrl,
      'itemIndex': itemIndex,
      'questions': questions,
    };
  }

  factory GridIconModel.fromJson(Map<String, dynamic> json) {
    return GridIconModel(
      gridIconId: json['gridIconId'] as int?,
      questionId: json['questionId'] as int?,
      imageUrl: json['imageUrl'] as String?,
      itemIndex: json['itemIndex'] as int?,
      questions: json['questions'] as String?,
    );
  }

  @override
  String toString() =>
      "GridIcons(gridIconId: $gridIconId,questionId: $questionId,imageUrl: $imageUrl,itemIndex: $itemIndex,questions: $questions)";

  @override
  int get hashCode =>
      Object.hash(gridIconId, questionId, imageUrl, itemIndex, questions);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is GridIconModel &&
          runtimeType == other.runtimeType &&
          gridIconId == other.gridIconId &&
          questionId == other.questionId &&
          imageUrl == other.imageUrl &&
          itemIndex == other.itemIndex &&
          questions == other.questions;

  @override
  GridIconModel fromJson(json) => GridIconModel.fromJson(json);

  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}
