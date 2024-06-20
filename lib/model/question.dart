// import 'grid_data.dart';
// import 'option_data.dart';
//
// final class Question {
//   int? questionId;
//   String? age;
//   String? imageUrl;
//   String? questionText1;
//   String? questionText2;
//   String? answerType;
//   String? questionType;
//   String? soundUrl;
//   String? lang;
//   int? pageNo;
//   int? questionOrder;
//   GridData? gridData;
//   OptionData? optionData;
//
//   Question({
//     this.questionId,
//     this.age,
//     this.imageUrl,
//     this.questionText1,
//     this.questionText2,
//     this.answerType,
//     this.questionType,
//     this.soundUrl,
//     this.lang,
//     this.pageNo,
//     this.questionOrder,
//     this.gridData,
//     this.optionData,
//   });
//
//   Question copyWith({
//     int? questionId,
//     String? age,
//     String? imageUrl,
//     String? questionText1,
//     String? questionText2,
//     String? answerType,
//     String? questionType,
//     String? soundUrl,
//     String? lang,
//     int? pageNo,
//     int? questionOrder,
//     GridData? gridData,
//     OptionData? optionData,
//   }) {
//     return Question(
//       questionId: questionId ?? this.questionId,
//       age: age ?? this.age,
//       imageUrl: imageUrl ?? this.imageUrl,
//       questionText1: questionText1 ?? this.questionText1,
//       questionText2: questionText2 ?? this.questionText2,
//       answerType: answerType ?? this.answerType,
//       questionType: questionType ?? this.questionType,
//       soundUrl: soundUrl ?? this.soundUrl,
//       lang: lang ?? this.lang,
//       pageNo: pageNo ?? this.pageNo,
//       questionOrder: questionOrder ?? this.questionOrder,
//       gridData: gridData ?? this.gridData,
//       optionData: optionData ?? this.optionData,
//     );
//   }
//
//   factory Question.fromJson(Map<String, dynamic> json) {
//     return Question(
//       questionId: json['questionId'] as int?,
//       age: json['age'] as String?,
//       imageUrl: json['imageUrl'] as String?,
//       questionText1: json['questionText1'] as String?,
//       questionText2: json['questionText2'] as String?,
//       answerType: json['answerType'] as String?,
//       questionType: json['questionType'] as String?,
//       soundUrl: json['soundUrl'] as String?,
//       lang: json['lang'] as String?,
//       pageNo: json['pageNo'] as int?,
//       questionOrder: json['questionOrder'] as int?,
//       gridData: json['gridData'] == null
//           ? null
//           : GridData.fromJson(json['gridData'] as Map<String, dynamic>),
//       optionData: json['optionData'] == null
//           ? null
//           : OptionData.fromJson(json['optionData'] as Map<String, dynamic>),
//     );
//   }
//
//
//
// }
//
//
//
//
