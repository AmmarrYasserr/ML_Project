import "package:dio/dio.dart";

class ApiService {
  static const String baseUrl = "https://ml.hossamohsen.me";

  //dio
  static Future<int> predict(Map<String, dynamic> data) async {
    final response = await Dio().post(
      "$baseUrl/predict",
      data: data,
    );

    if (response.statusCode == 200) {
      return response.data["prediction"];
    } else {
      throw Exception("Failed to predict");
    }
  }
}
