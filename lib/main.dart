import 'package:flutter/material.dart';
import 'package:practice_widgets/component/move.dart';
import 'package:practice_widgets/defaultPage.dart';

void main() {
  runApp(const PracticeWidgets());
}

class PracticeWidgets extends StatelessWidget {
  const PracticeWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: getRouters(),
      home: DefaultPage(),
    );
  }
}
