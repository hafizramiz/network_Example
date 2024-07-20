abstract class IBaseResponseModel<T> {}

/// Burdaki metotlarin hepsi olsun. Bundan inherit edilen classlarin hepsi bu metotlari implement etsin.
/// SecondResponseModel bu class'tan inherit alip hepsini uygulasin.
/// Return Yaparken de SecondResponseModel'i dondurelim
abstract class BaseResponse<T> {
  dynamic? body;
  int? statusCode;
  String? errorMessage;

  BaseResponse({this.statusCode, this.errorMessage, this.body});

  T fromJson(Map<String, dynamic> json);

  void setData<R>(R entity);

  void clearResponse() {
    statusCode = null;
    errorMessage = null;
    body = null;
  }
}
