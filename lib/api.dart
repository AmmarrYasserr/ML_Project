import "package:dio/dio.dart";
import "package:ml_project/models/prediction_request.dart";

class ApiService {
  static const String baseUrl = "https://ml.hossamohsen.me";

  //dio
  static Future<int> predict(PredictionRequest data) async {
    final response = await Dio().post(
      "$baseUrl/predict",
      data: data.toJson(),
    );

    if (response.statusCode == 200) {
      return response.data["prediction"];
    } else {
      throw Exception("Failed to predict");
    }
  }
}
