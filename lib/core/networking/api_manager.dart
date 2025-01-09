import 'package:dio/dio.dart';
import 'package:doctor_app/core/resources/constants_manager.dart';

class ApiManager {
  late Dio dio;
  ApiManager() {
    dio = Dio();
  }

  Future<Response> getData(
    String endpoint, {
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
  }) {
    return dio.get(
      AppConstants.baseUrl + endpoint,
      queryParameters: queryParameters,
      options: Options(headers: headers, validateStatus: (status) => true),
    );
  }

  Future<Response> postData(
    String endPoint, {
    Map<String, dynamic>? body,
    Map<String, dynamic>? headers,
  }) {
    return dio.post(
      AppConstants.baseUrl + endPoint,
      data: body,
      options: Options(headers: headers, validateStatus: (status) => true),
    );
  }

  Future<Response> deleteData(
    String endPoint, {
    Map<String, dynamic>? body,
    Map<String, dynamic>? headers,
  }) {
    return dio.delete(
      AppConstants.baseUrl + endPoint,
      data: body,
      options: Options(headers: headers, validateStatus: (status) => true),
    );
  }

  Future<Response> updateData(
    String endPoint, {
    Map<String, dynamic>? body,
    Map<String, dynamic>? headers,
  }) {
    return dio.put(
      AppConstants.baseUrl + endPoint,
      data: body,
      options: Options(headers: headers, validateStatus: (status) => true),
    );
  }
}
