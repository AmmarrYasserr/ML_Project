import 'package:hive/hive.dart';

part 'prediction_request.g.dart';

@HiveType(typeId: 1)
class PredictionRequest {
  @HiveField(0)
  final String gender;
  @HiveField(1)
  final int seniorCitizen;
  @HiveField(2)
  final String partner;
  @HiveField(3)
  final String dependents;
  @HiveField(4)
  final int tenure;
  @HiveField(5)
  final String phoneService;
  @HiveField(6)
  final String multipleLines;
  @HiveField(7)
  final String internetService;
  @HiveField(8)
  final String onlineSecurity;
  @HiveField(9)
  final String onlineBackup;
  @HiveField(10)
  final String deviceProtection;
  @HiveField(11)
  final String techSupport;
  @HiveField(12)
  final String streamingTV;
  @HiveField(13)
  final String streamingMovies;
  @HiveField(14)
  final String contract;
  @HiveField(15)
  final String paperlessBilling;
  @HiveField(16)
  final String paymentMethod;
  @HiveField(17)
  final double monthlyCharges;
  @HiveField(18)
  final double totalCharges;

  PredictionRequest({
    required this.gender,
    required this.seniorCitizen,
    required this.partner,
    required this.dependents,
    required this.tenure,
    required this.phoneService,
    required this.multipleLines,
    required this.internetService,
    required this.onlineSecurity,
    required this.onlineBackup,
    required this.deviceProtection,
    required this.techSupport,
    required this.streamingTV,
    required this.streamingMovies,
    required this.contract,
    required this.paperlessBilling,
    required this.paymentMethod,
    required this.monthlyCharges,
    required this.totalCharges,
  });

  factory PredictionRequest.fromJson(Map<String, dynamic> json) {
    return PredictionRequest(
      gender: json["gender"],
      seniorCitizen: json["seniorCitizen"],
      partner: json["partner"],
      dependents: json["dependents"],
      tenure: json["tenure"],
      phoneService: json["phoneService"],
      multipleLines: json["multipleLines"],
      internetService: json["internetService"],
      onlineSecurity: json["onlineSecurity"],
      onlineBackup: json["onlineBackup"],
      deviceProtection: json["deviceProtection"],
      techSupport: json["techSupport"],
      streamingTV: json["streamingTV"],
      streamingMovies: json["streamingMovies"],
      contract: json["contract"],
      paperlessBilling: json["paperlessBilling"],
      paymentMethod: json["paymentMethod"],
      monthlyCharges: json["monthlyCharges"],
      totalCharges: json["totalCharges"],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "gender": gender,
      "seniorCitizen": seniorCitizen,
      "partner": partner,
      "dependents": dependents,
      "tenure": tenure,
      "phoneService": phoneService,
      "multipleLines": multipleLines,
      "internetService": internetService,
      "onlineSecurity": onlineSecurity,
      "onlineBackup": onlineBackup,
      "deviceProtection": deviceProtection,
      "techSupport": techSupport,
      "streamingTV": streamingTV,
      "streamingMovies": streamingMovies,
      "contract": contract,
      "paperlessBilling": paperlessBilling,
      "paymentMethod": paymentMethod,
      "monthlyCharges": monthlyCharges,
      "totalCharges": totalCharges
    };
  }
}
