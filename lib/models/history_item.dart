import 'package:ml_project/models/prediction_request.dart';

class HistoryItem {
  final String id;
  final DateTime timestamp;
  final PredictionRequest request;
  final int prediction;

  HistoryItem({
    required this.id,
    required this.timestamp,
    required this.request,
    required this.prediction,
  });

  factory HistoryItem.fromJson(Map<String, dynamic> json) {
    return HistoryItem(
      id: json["id"],
      timestamp: DateTime.parse(json["timestamp"]),
      request: PredictionRequest.fromJson(json["request"]),
      prediction: json["prediction"],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "timestamp": timestamp.toIso8601String(),
      "request": request.toJson(),
      "prediction": prediction,
    };
  }
}
