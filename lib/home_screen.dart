import 'package:flutter/material.dart';
import 'package:ml_project/mobile_view.dart';
import 'package:ml_project/web_view.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    if (MediaQuery.of(context).size.width < 600) {
      return const MobileView();
    } else {
      return const WebView();
    }
  }
}
