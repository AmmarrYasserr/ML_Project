import 'package:flutter/material.dart';
import 'package:ml_project/project.dart';
import 'package:ml_project/website.dart';

class windowsize extends StatefulWidget {
  const windowsize({super.key});

  @override
  State<windowsize> createState() => _windowsizeState();
}

class _windowsizeState extends State<windowsize> {
  @override
  Widget build(BuildContext context) {
    if (MediaQuery.of(context).size.width < 600) {
      return MLprojectv2();
    } else {
      return MLwebsite();
    }
  }
}
