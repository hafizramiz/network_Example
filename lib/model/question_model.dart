
import 'package:network_example/model/base_network_model.dart';

import 'grid_icon_model.dart';
import 'option_model.dart';

final class QuestionModel extends IBaseNetworkModel<QuestionModel> {
  int? questionId;
  String? age;
  String? category;
  int? categoryGroup;
  String? imageUrl;
  String? text1;
  String? text2;
  String? questionType;
  String? optionType;
  String? soundUrl;
  String? lang;
  int? order;
  int? time;
  int? gridLength;
  List<OptionModel>? options;
  List<GridIconModel>? gridIcons;

  QuestionModel({
    this.questionId,
    this.age,
    this.category,
    this.categoryGroup,
    this.imageUrl,
    this.text1,
    this.text2,
    this.questionType,
    this.optionType,
    this.soundUrl,
    this.lang,
    this.order,
    this.time,
    this.gridLength,
    this.options,
    this.gridIcons,
  });

  QuestionModel copyWith({
    int? questionId,
    String? age,
    String? category,
    int? categoryGroup,
    String? imageUrl,
    String? text1,
    String? text2,
    String? questionType,
    String? optionType,
    String? soundUrl,
    String? lang,
    int? order,
    int? time,
    int? gridLength,
    List<OptionModel>? options,
    List<GridIconModel>? gridIcons,
  }) {
    return QuestionModel(
      questionId: questionId ?? this.questionId,
      age: age ?? this.age,
      category: category ?? this.category,
      categoryGroup: categoryGroup ?? this.categoryGroup,
      imageUrl: imageUrl ?? this.imageUrl,
      text1: text1 ?? this.text1,
      text2: text2 ?? this.text2,
      questionType: questionType ?? this.questionType,
      optionType: optionType ?? this.optionType,
      soundUrl: soundUrl ?? this.soundUrl,
      lang: lang ?? this.lang,
      order: order ?? this.order,
      time: time ?? this.time,
      gridLength: gridLength ?? this.gridLength,
      options: options ?? this.options,
      gridIcons: gridIcons ?? this.gridIcons,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'questionId': questionId,
      'age': age,
      'category': category,
      'categoryGroup': categoryGroup,
      'imageUrl': imageUrl,
      'text1': text1,
      'text2': text2,
      'questionType': questionType,
      'optionType': optionType,
      'soundUrl': soundUrl,
      'lang': lang,
      'order': order,
      'time': time,
      'gridLength': gridLength,
      'options': options,
      'gridIcons': gridIcons,
    };
  }

  factory QuestionModel.fromJson(Map<String, dynamic> json) {
    return QuestionModel(
      questionId: json['questionId'] as int?,
      age: json['age'] as String?,
      category: json['category'] as String?,
      categoryGroup: json['categoryGroup'] as int?,
      imageUrl: json['imageUrl'] as String?,
      text1: json['text1'] as String?,
      text2: json['text2'] as String?,
      questionType: json['questionType'] as String?,
      optionType: json['optionType'] as String?,
      soundUrl: json['soundUrl'] as String?,
      lang: json['lang'] as String?,
      order: json['order'] as int?,
      time: json['time'] as int?,
      gridLength: json['gridLength'] as int?,
      options: (json['options'] as List<dynamic>?)
          ?.map((e) => OptionModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      gridIcons: (json['gridIcons'] as List<dynamic>?)
          ?.map((e) => GridIconModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }

  @override
  String toString() =>
      "QuestionModel(questionId: $questionId,age: $age,category: $category,categoryGroup: $categoryGroup,imageUrl: $imageUrl,text1: $text1,text2: $text2,questionType: $questionType,optionType: $optionType,soundUrl: $soundUrl,lang: $lang,order: $order,time: $time,gridLength: $gridLength,options: $options,gridIcons: $gridIcons)";

  @override
  QuestionModel fromJson(json) => QuestionModel.fromJson(json);

  @override
  // TODO: implement props
  List<Object?> get props => [
        questionId,
        age,
        category,
        categoryGroup,
        imageUrl,
        text1,
        text2,
        questionType,
        optionType,
        soundUrl,
        lang,
        order,
        time,
        gridLength,
        options,
        gridIcons
      ];
}




