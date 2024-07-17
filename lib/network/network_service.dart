import 'package:flutter/material.dart';
import 'package:network_example/model/base_respose_model.dart';
import 'package:network_example/model/second_response_model.dart';
import 'package:vexana/vexana.dart';
import '../model/base_network_model.dart';

/// This class is used to make network requests.
final class NetworkService {
  NetworkService._init();

  /// This map is used to set the headers.
  final headers = {
    'Access-Control-Allow-Origin': '*',
    'Access-Control-Allow-Headers':
        'Origin, Content-Type, Accept, Credentials, Authorization',
    'Access-Control-Allow-Credentials': 'true',
  };

  /// This method is used to initialize the Dio package.
  void start() {
    _networkManager = NetworkManager<EmptyModel>(
      options: BaseOptions(
        baseUrl: "http://api.zymakademi.xyz/api/",
        headers: headers,
        receiveDataWhenStatusError: true,
        validateStatus: (status) => status != null,
      ),
    );
  }

  static final NetworkService _instance = NetworkService._init();

  static NetworkService get instance => _instance;

  late NetworkManager _networkManager;

  /// This method is used to make a Post request.
  Future<SecondResponseModel> request<E extends BaseEntity<E>, R>(
    String path, {
    required E parserModel,

    /// Request attigimizda donecek olan response model
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    MethodType? method,
  }) async {
    options?.method = MethodType.getMethodType(method);

    final response = await _networkManager.request<dynamic>(
      path,
      data: data,
      queryParameters: queryParameters,
      options: options,
      cancelToken: cancelToken,
    );

    if (response.data == null) {
      // final model = responseModel;
      // model.statusCode = response.statusCode;
      // model.errorMessage = response.statusMessage;
      // return model;

      return SecondResponseModel(
          errorMessage: response.statusMessage,
          statusCode: response.statusCode);
    }
    print("response.data: ${response.data}");

    final entity = _parseBody<E, R>(
      response.data,

      /// Response data Liste ve ya Map olabilir.
      model: parserModel,
    );
    if (entity == null) {
      // final model = responseModel;
      // model.statusCode = response.statusCode;
      // model.errorMessage = "Enity  null geldi";
      return SecondResponseModel(body: null);
    }
    SecondResponseModel model=SecondResponseModel();
        model.setData(entity);
    model.statusCode = response.statusCode;
    return model;
  }

  R? _parseBody<T extends BaseEntity<T>, R>(
    dynamic responseBody, {
    T? model,
  }) {
    dynamic data = responseBody;
    if (model == null || data == null) {
      return null;
    }
    if (data == null) {
      debugPrint(
        'Be careful your data $data, Cannot be null',
      );
      return null;
    }
    if (data is Map<String, dynamic>) {
      return model.fromJson(data) as R;
    } else if (data is List) {
      return data
          .map(
            (e) => model.fromJson(
              e is Map<String, dynamic> ? e : {},
            ),
          )
          .cast<T>()
          .toList() as R;
    } else {
      print('Parse Error: $data');
      return model.toString() as R;
    }
  }
}

enum MethodType {
  get('GET'),
  post('POST'),
  put('PUT'),
  delete('DELETE');

  const MethodType(this.value);

  final String value;

  static String getMethodType(MethodType? method) => switch (method) {
        MethodType.get => MethodType.get.value,
        MethodType.put => MethodType.put.value,
        MethodType.delete => MethodType.delete.value,
        _ => MethodType.post.value
      };
}
