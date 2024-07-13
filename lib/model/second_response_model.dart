import 'dart:convert';

import 'interface_base_response_model.dart';

class SecondResponseModel extends BaseResponse<SecondResponseModel> {
  dynamic body;
  // int? statusCode; already exists in the class it inherits

  SecondResponseModel({
    required this.body,
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
  void clearEntity() {
    // TODO: implement clearEntity
  }
}