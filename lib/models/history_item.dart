import 'package:hive/hive.dart';
import 'package:ml_project/models/prediction_request.dart';
import 'package:uuid/uuid.dart' as uuid;

part 'history_item.g.dart';

@HiveType(typeId: 0)
class HistoryItem {
  @HiveField(0)
  final String id;
  @HiveField(1)
  final DateTime timestamp;
  @HiveField(2)
  final PredictionRequest request;
  @HiveField(3)
  final int prediction;

  HistoryItem({
    required this.id,
    required this.timestamp,
    required this.request,
    required this.prediction,
  });

  HistoryItem.create({
    required this.request,
    required this.prediction,
  })  : id = const uuid.Uuid().v4(),
        timestamp = DateTime.now();

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
