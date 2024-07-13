
abstract class IBaseResponseModel<T> {}


abstract class BaseResponse<T> {
  int? responseStatus;
  int? statusCode;
  String? errorMessage;

  BaseResponse({
    this.responseStatus,
    this.statusCode,
    this.errorMessage,
  });

  T fromJson(Map<String, dynamic> json);
  void setData<R>(R entity);

  void clearResponse() {
    responseStatus = null;
    statusCode = null;
    errorMessage = null;

    clearEntity();
  }

  void clearEntity();
}