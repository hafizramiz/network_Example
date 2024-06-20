import 'interface_base_response_model.dart';

/// Base response model for all api responses
final class BaseResponseModel<T> extends IBaseResponseModel<T> {
  /// Base response model contructor method
  BaseResponseModel({
    /// Burdaki T tipindeki data değişkeni, gelen veri tipine göre değişir.
    /// Ornegin: QuestionResponseModel.
    /// QuestionReponseModel'de gelen veri tipi List<QuestionModel> olacaktir.
    this.data,
    this.statusCode,
    this.message,
    this.cookie,
  });

  final String? cookie;

  final T? data;

  final int? statusCode;

  final String? message;

  @override
  BaseResponseModel<T> fromJson(Map<String, dynamic> json) {
    return BaseResponseModel<T>(
      data: data,
      statusCode: json['statusCode'] as int?,
      message: json['message'] as String?,
    );
  }

  static String? fromError(Map<String, dynamic> json) {
    return json['message'] as String?;
  }

  @override
  Map<String, dynamic>? toJson() {
    return {
      'data': data,
      'statusCode': statusCode,
      'error': message ?? '',
    };
  }

  @override
  String toString() {
    return 'BaseResponseModel(data: $data, statusCode:'
        ' $statusCode';
  }

  @override
  set data(T? data) => data;

  @override
  set message(String? message) => message;

  @override
  set statusCode(int? statusCode) => statusCode;

  @override
  List<Object?> get props => [
        data,
        statusCode,
        message,
      ];
}
