import 'package:flutter/material.dart';
import 'package:ml_project/screens/history/history_screen.dart';
import 'package:ml_project/screens/predict/predict_screen.dart';
import 'package:bottom_navbar_with_indicator/bottom_navbar_with_indicator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Customer Churn Prediction",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          backgroundColor: Colors.orangeAccent,
        ),
        bottomNavigationBar: CustomLineIndicatorBottomNavbar(
          enableLineIndicator: true,
          indicatorType: IndicatorType.top,
          lineIndicatorWidth: 3,
          selectedColor: Colors.orangeAccent[400],
          customBottomBarItems: [
            CustomBottomBarItems(
              icon: Icons.assessment,
              label: "Predict",
            ),
            CustomBottomBarItems(
              icon: Icons.history,
              label: "History",
            ),
          ],
          currentIndex: _index,
          onTap: (int index) {
            setState(() {
              _index = index;
            });
          },
        ),
        body: _index == 0 ? const PredictScreen() : const HistoryScreen(),
      ),
    );
  }
}
