import 'package:flutter/material.dart';
import 'package:ml_project/screens/predict/mobile_view.dart';
import 'package:ml_project/screens/predict/web_view.dart';

class PredictScreen extends StatelessWidget {
  const PredictScreen({super.key});

  @override
  Widget build(BuildContext context) {
    if (MediaQuery.of(context).size.width < 600) {
      return const MobileView();
    } else {
      return const WebView();
    }
  }
}
