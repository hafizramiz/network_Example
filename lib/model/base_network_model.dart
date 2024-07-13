
abstract class IBaseNetworkModel<E> {
  E fromJson(Map<String, dynamic> json);
  Map<String, dynamic>? toJson();
}


abstract class BaseEntity<T> {
  const BaseEntity();
  T fromJson(dynamic data);
}