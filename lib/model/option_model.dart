import 'package:flutter/material.dart';
import 'package:network_example/model/base_network_model.dart';


final class OptionModel extends IBaseNetworkModel<OptionModel> {
  int? optionId;
  int? questionId;
  String? optionUrl;
  String? lang;
  int? order;
  String? soundUrl;
  bool? isCorrect;
  String? questions;
  Color color=Colors.white;
  bool isClicked=false;

  OptionModel({
    this.optionId,
    this.questionId,
    this.optionUrl,
    this.lang,
    this.order,
    this.soundUrl,
    this.isCorrect,
    this.questions,
    this.isClicked=false
  });

  OptionModel copyWith({
    int? optionId,
    int? questionId,
    String? optionUrl,
    String? lang,
    int? order,
    String? soundUrl,
    bool? isCorrect,
    String? questions,
  }) {
    return OptionModel(
      optionId: optionId ?? this.optionId,
      questionId: questionId ?? this.questionId,
      optionUrl: optionUrl ?? this.optionUrl,
      lang: lang ?? this.lang,
      order: order ?? this.order,
      soundUrl: soundUrl ?? this.soundUrl,
      isCorrect: isCorrect ?? this.isCorrect,
      questions: questions ?? this.questions,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'optionId': optionId,
      'questionId': questionId,
      'optionUrl': optionUrl,
      'lang': lang,
      'order': order,
      'soundUrl': soundUrl,
      'isCorrect': isCorrect,
      'questions': questions,
    };
  }

  factory OptionModel.fromJson(Map<String, dynamic> json) {
    return OptionModel(
      optionId: json['optionId'] as int?,
      questionId: json['questionId'] as int?,
      optionUrl: json['optionUrl'] as String?,
      lang: json['lang'] as String?,
      order: json['order'] as int?,
      soundUrl: json['soundUrl'] as String?,
      isCorrect: json['isCorrect'] as bool?,
      questions: json['questions'] as String?,
    );
  }

  @override
  String toString() =>
      "Options(optionId: $optionId,questionId: $questionId,optionUrl: $optionUrl,lang: $lang,order: $order,soundUrl: $soundUrl,isCorrect: $isCorrect,questions: $questions)";

  @override
  OptionModel fromJson(json) => OptionModel.fromJson(json);

  @override
  // TODO: implement props
  List<Object?> get props => [
        optionUrl,
        optionId,
        questions,
        questionId,
        lang,
        order,
        isCorrect,
        soundUrl
      ];
}
