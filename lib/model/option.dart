// import 'package:flutter/material.dart';
//
// final class Option {
//   int? optionId;
//   int? questionId;
//   String? optionUrl;
//   String? lang;
//   int? optionOrder;
//   String? soundUrl;
//   String? isCorrect;
//   Color color=Colors.white;
//   bool isClicked=false;
//
//   Option({
//     this.optionId,
//     this.questionId,
//     this.optionUrl,
//     this.lang,
//     this.optionOrder,
//     this.soundUrl,
//     this.isCorrect,
//     this.isClicked=false
//   });
//
//   Option copyWith({
//     int? optionId,
//     int? questionId,
//     String? optionUrl,
//     String? lang,
//     int? optionOrder,
//     String? soundUrl,
//     String? isCorrect,
//   }) {
//     return Option(
//       optionId: optionId ?? this.optionId,
//       questionId: questionId ?? this.questionId,
//       optionUrl: optionUrl ?? this.optionUrl,
//       lang: lang ?? this.lang,
//       optionOrder: optionOrder ?? this.optionOrder,
//       soundUrl: soundUrl ?? this.soundUrl,
//       isCorrect: isCorrect ?? this.isCorrect,
//     );
//   }
//
//   factory Option.fromJson(Map<String, dynamic> json) {
//     return Option(
//       optionId: json['optionId'] as int?,
//       questionId: json['questionId'] as int?,
//       optionUrl: json['optionUrl'] as String?,
//       lang: json['lang'] as String?,
//       optionOrder: json['optionOrder'] as int?,
//       soundUrl: json['soundUrl'] as String?,
//       isCorrect: json['isCorrect'] as String?,
//     );
//   }
//
// }