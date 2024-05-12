//  future: ApiService.predict({
//                                     "gender": gender,
//                                     "seniorCitizen":
//                                         seniorCitizen == "Yes" ? 1 : 0,
//                                     "partner": partner,
//                                     "dependents": dependents,
//                                     "tenure": int.parse(tenure.text),
//                                     "phoneService": phoneService,
//                                     "multipleLines": multipleLines,
//                                     "internetService": internetService,
//                                     "onlineSecurity": onlineSecurity,
//                                     "onlineBackup": onlineBackup,
//                                     "deviceProtection": deviceProtection,
//                                     "techSupport": techSupport,
//                                     "streamingTV": streamingTV,
//                                     "streamingMovies": streamingMovies,
//                                     "contract": contract,
//                                     "paperlessBilling": paperlessBilling,
//                                     "paymentMethod": paymentMethod,
//                                     "monthlyCharges":
//                                         double.parse(monthlyCharges.text),
//                                     "totalCharges":
//                                         double.parse(totalCharges.text)
//                                   })

class PredictionRequest {
  //convert all the above to fields
  final String gender;
  final int seniorCitizen;
  final String partner;
  final String dependents;
  final int tenure;
  final String phoneService;
  final String multipleLines;
  final String internetService;
  final String onlineSecurity;
  final String onlineBackup;
  final String deviceProtection;
  final String techSupport;
  final String streamingTV;
  final String streamingMovies;
  final String contract;
  final String paperlessBilling;
  final String paymentMethod;
  final double monthlyCharges;
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
