import 'package:flutter/material.dart';
import 'package:network_example/model/base_respose_model.dart';
import 'package:network_example/model/question_response_model.dart';
import '../question/question_service.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
late final Future<BaseResponseModel<QuestionResponseModel>>  futureQuestion;

  @override
  void initState() {
  futureQuestion=QuestionService().getQuestionList<QuestionResponseModel>(model: QuestionResponseModel());
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        title: const Text('Fetch Data Example'),
      ),
      body: Center(
        child: FutureBuilder<BaseResponseModel<QuestionResponseModel>> (
          future: futureQuestion,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return Column(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(snapshot.data.toString()),
                Text(
                  "Data: ${snapshot.data?.data?.questions![0].soundUrl}",
                ),
                  Text(
                    "message: ${snapshot.data?.message}",
                  ),
                ],
              );
            } else if (snapshot.hasError) {
              return Text('${snapshot.error}');
            }
            return const CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}
