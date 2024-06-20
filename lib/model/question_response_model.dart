
import 'package:network_example/model/base_network_model.dart';
import 'package:network_example/model/question_model.dart';


final class QuestionResponseModel extends IBaseNetworkModel<QuestionResponseModel> {
  final List<QuestionModel>? questions;

  QuestionResponseModel({this.questions});

  @override
  QuestionResponseModel fromJson(Map<String, dynamic> json) {
    return QuestionResponseModel(
      questions: questions,
    );
  }

  @override
  Map<String, dynamic>? toJson() {
    // TODO: implement toJson
    throw UnimplementedError();
  }

}
