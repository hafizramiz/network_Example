// import 'option.dart';
//
// final class OptionData {
//   int? time;
//   List<Option>? options;
//
//   OptionData({
//     this.time,
//     this.options,
//   });
//
//   OptionData copyWith({
//     int? time,
//     List<Option>? options,
//   }) {
//     return OptionData(
//       time: time ?? this.time,
//       options: options ?? this.options,
//     );
//   }
//
//   factory OptionData.fromJson(Map<String, dynamic> json) {
//     return OptionData(
//       time: json['time'] as int?,
//       options: (json['options'] as List<dynamic>?)
//           ?.map((e) => Option.fromJson(e as Map<String, dynamic>))
//           .toList(),
//     );
//   }
//
// }