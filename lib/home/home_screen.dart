import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:network_example/router/my_route_manager.dart';
import 'package:vexana/vexana.dart';

import '../core/network/network_service.dart';
import 'model/question_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  var data;
  List<QuestionModel> dataList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
      ),
      body: SingleChildScrollView(
        child: Center(
            child: Column(
          children: [
            Text("data: $data"),
            ElevatedButton(
              onPressed: () async {
                final response = await NetworkService.instance
                    .request<QuestionModel, QuestionModel>(
                  "Question/45",
                  options: Options(),
                  method: MethodType.get,
                  parserModel: QuestionModel(),
                );

                data = response.body;
                setState(() {});

                /// Response olarak SecondResponseModel donmesini bekliyorum.

                print("response: $response");
              },
              child: Text("Fetch Question"),
            ),
            Text(dataList.length.toString()),
            Text(dataList.toString()),
            ElevatedButton(
              onPressed: () async {
                final response = await NetworkService.instance
                    .request<QuestionModel, List<QuestionModel>>(
                  "Question/page=1&size=25&category=AY",
                  options: Options(),
                  method: MethodType.get,
                  parserModel: QuestionModel(),
                );

                dataList = response.body;
                setState(() {});

                /// Response olarak SecondResponseModel donmesini bekliyorum.

                print("response list: $response");
              },
              child: Text("Fetch Questions"),
            ),
            ElevatedButton(
                onPressed: () {
                  /// Home Screen'den Users Screen'e gitmek istiyorum
                  context.push("${RoutePaths.users.path}/123rrrr}");
               //    context.go("${RoutePaths.users.path}/123rrrr}");
               // context.go('/users/123');
                 //  context.push('/users/123');
                },
                child: Text("Go to user Screen"))
          ],
        )),
      ),
    );
  }
}
