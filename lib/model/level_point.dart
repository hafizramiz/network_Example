
import 'package:equatable/equatable.dart';

/// Parse edilecek her bir model Base Model'den inherit alacak.
/// Cunku burda toJson ve fromJson metotlari var.
/// Level Point modeli db'ye kayit edilmesi gerekiyor.
/// Bu sekilde hangi soruda kaldigini biliyor olacaagiz.
final class LevelPoint extends Equatable {
  int? levelPointIndex;
  int? questionIndex;
  String? scrollMapPointUrl;
  String? gridViewPointUrl;
  bool? isOpen = false;

  LevelPoint(
      {this.levelPointIndex,
        this.questionIndex,
        this.scrollMapPointUrl,
        this.isOpen,
        this.gridViewPointUrl});

  LevelPoint copyWith({
    int? levelPointIndex,
    int? questionIndex,
    String? scrollMapPointUrl,
    String? gridViewPointUrl,
    bool? isOpen,
  }) {
    return LevelPoint(
      levelPointIndex: levelPointIndex ?? this.levelPointIndex,
      questionIndex: questionIndex ?? this.questionIndex,
      scrollMapPointUrl: scrollMapPointUrl ?? this.scrollMapPointUrl,
      gridViewPointUrl: gridViewPointUrl ?? this.gridViewPointUrl,
      isOpen: isOpen ?? this.isOpen,
    );
  }

  @override
  factory LevelPoint.fromJson(json) {
    return LevelPoint(
        levelPointIndex: json["levelPointIndex"],
        questionIndex: json["questionIndex"],
        scrollMapPointUrl: json["scrollMapPointUrl"],
        gridViewPointUrl: json["gridViewPointUrl"],
        isOpen: json["isOpen"]);
  }

  @override
  // TODO: implement props
  List<Object?> get props => [
    levelPointIndex,
    questionIndex,
    scrollMapPointUrl,
    gridViewPointUrl,
    isOpen
  ];

  @override
  Map<String, dynamic> toJson() {
    return {
      "levelPointIndex": levelPointIndex,
      "questionIndex": questionIndex,
      "scrollMapPointUrl": scrollMapPointUrl,
      "gridViewPointUrl": gridViewPointUrl,
      "isOpen": isOpen
    };
  }
}



