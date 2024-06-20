// import 'dart:io';
//
// import 'package:network_example/network/network_service.dart';
//
// import 'model/base_network_model.dart';
// import 'model/base_respose_model.dart';
//
//
//
// final class LoginService  {
//
//   /// Network Service'te olan request metotu cagrilir.
//   Future<BaseResponseModel<T>> login<T extends IBaseNetworkModel<T>>({
//     Object? loginModel,
//     T? model,
//   }) async {
//     if (loginModel == null) {
//       return BaseResponseModel(
//         statusCode: HttpStatus.badRequest,
//       );
//     }
//     final response = await NetworkService.instance.request<T>(
//       AppNetwork.loginPath,
//       data: loginModel,
//       model: model,
//       method: MethodType.post,
//     );
//     return response;
//   }
//
//   @override
//   Future<BaseResponseModel<T>> logout<T extends IBaseNetworkModel<T>>() {
//     throw UnimplementedError();
//   }
// }
