import 'package:dio/dio.dart';
import 'package:riverpod_example/model/passengers_response.dart';

class Api {
  Future<PassengersResponse> getPassengers(int page) async {
    try {
      final response = await Dio().get(
        'https://api.instantwebtools.net/v1/passenger',
        queryParameters: {
          'page': page,
          'size': 30,
        },
      );
      print("the response is $response");
      return PassengersResponse.fromJson(response.data);
    } on DioError catch (e) {
      throw Exception(e.response?.statusMessage);
    }
  }
}
