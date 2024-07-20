import 'dart:convert';

import 'interface_base_response_model.dart';
final class SecondResponseModel implements BaseResponse<SecondResponseModel> {
  @override
  String? errorMessage;

  @override
  int? statusCode;

  dynamic? body;

  SecondResponseModel({
     this.body,
    this.statusCode,
    this.errorMessage
  });

  @override
  SecondResponseModel fromJson(Map<String, dynamic> json) {
    return SecondResponseModel.fromMap(json);
  }

  @override
  void setData<R>(R entity) {
    body = entity;
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'body': body,
    };
  }

  factory SecondResponseModel.fromMap(Map<String, dynamic> map) {
    return SecondResponseModel(
      body: map['body'] as dynamic,
    );
  }

  String toJson() => json.encode(toMap());

  factory SecondResponseModel.fromJson(String source) =>
      SecondResponseModel.fromMap(json.decode(source) as Map<String, dynamic>);


  @override
  void clearResponse() {
    // TODO: implement clearResponse
  }
}

/// Second response BaseResponse'dan inherit Alsin ordaki metotlari implement etsin.
/// Network servis'te return yaparken de SecondResponseModel'i dondurelim
//
// final class ResponseModel<T extends BaseModel> extends BaseResponseModel {
//   ResponseModel({this.data, this.statusCode, this.message});
//   final T? data;
//   final int? statusCode;
//   final String? message;
// }
//
//
// /// Base response model for all api responses
// class BaseResponseModel<T> extends IBaseResponseModel<T> {
//   /// Base response model contructor method
//   BaseResponseModel({
//     /// Burdaki T tipindeki data değişkeni, gelen veri tipine göre değişir.
//     /// Ornegin: QuestionResponseModel.
//     /// QuestionReponseModel'de gelen veri tipi List<QuestionModel> olacaktir.
//     this.data,
//     this.statusCode,
//     this.message,
//     this.cookie,
//   });
//
//   final String? cookie;
//
//   final T? data;
//
//   final int? statusCode;
//
//   final String? message;
//
//   @override
//   BaseResponseModel<T> fromJson(Map<String, dynamic> json) {
//     return BaseResponseModel<T>(
//       data: data,
//       statusCode: json['statusCode'] as int?,
//       message: json['message'] as String?,
//     );
//   }
//
//   static String? fromError(Map<String, dynamic> json) {
//     return json['message'] as String?;
//   }
//
//   @override
//   Map<String, dynamic>? toJson() {
//     return {
//       'data': data,
//       'statusCode': statusCode,
//       'error': message ?? '',
//     };
//   }
//
//   @override
//   String toString() {
//     return 'BaseResponseModel(data: $data, statusCode:'
//         ' $statusCode';
//   }
//
//   @override
//   set data(T? data) => data;
//
//   @override
//   set message(String? message) => message;
//
//   @override
//   set statusCode(int? statusCode) => statusCode;
//
//   @override
//   List<Object?> get props => [
//     data,
//     statusCode,
//     message,
//   ];
// }
