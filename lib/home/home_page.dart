import 'package:flutter/material.dart';
import 'package:network_example/model/base_respose_model.dart';
import 'package:network_example/model/empty_response_model.dart';
import 'package:network_example/model/question_model.dart';
import 'package:network_example/model/question_response_model.dart';
import 'package:network_example/model/second_response_model.dart';
import 'package:vexana/vexana.dart';
import '../network/network_service.dart';
import '../question/question_service.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  var data = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fetch Data Example'),
      ),
      body: Center(
          child: Column(
        children: [
          Text("data: $data"),
          ElevatedButton(
            onPressed: () async {


              final response = await NetworkService.instance.request<QuestionModel, QuestionModel>(
                "Question/45",
                options: Options(),
                method: MethodType.get,
                parserModel: QuestionModel(),
                responseModel: SecondResponseModel(body: null),
              );

              /// Response olarak SecondResponseModel donmesini bekliyorum.

              print("response: $response");
            },
            child: Text("Fetch Question"),
          ),
          ElevatedButton(
            onPressed: () async {


              final response = await NetworkService.instance.request<QuestionModel, List<QuestionModel>>(
                "Question/page=1&size=25&category=AYrr",
                options: Options(),
                method: MethodType.get,
                parserModel: QuestionModel(),
                responseModel: SecondResponseModel(body: null),
              );

              /// Response olarak SecondResponseModel donmesini bekliyorum.

              print("response list: $response");
            },
            child: Text("Fetch Questions"),
          ),
        ],
      )),
    );
  }
}
