// import 'package:network_example/network/network_service.dart';
// import 'package:vexana/vexana.dart';
//
// import '../model/base_network_model.dart';
// import '../model/base_respose_model.dart';
//
// final class QuestionService {
//
//   @override
//   Future<BaseResponseModel<T>> getQuestionList<T extends IBaseNetworkModel<T>>({
//     T? model,
//   }) async {
//     // if (model == null) {
//     //   return BaseResponseModel(
//     //     message: "model is null"
//     //   );
//     // }
//     /// Buraya String path verilir.
//     final response = await NetworkService.instance.request<T>(
//       "Question/page=1&size=25&category=AY",
//       options: Options(),
//       method: MethodType.get,
//       parserModel: model,
//     );
//     return response;
//   }
//
//
//
//
// }
//
//
// //
// // final class QuestionService {
// //
// //   Future<Object?> getQuestionList() async {
// //     final response = await NetworkService.instance.request(
// //       "Performans/page=1&size=25&subject=db",
// //       options: Options(),
// //       method: MethodType.get,
// //     );
// //    // print("response: $response");
// //     print("response'in tipi: ${response.runtimeType}");
// //     return response;
// //   }
// // }
//
//
//
