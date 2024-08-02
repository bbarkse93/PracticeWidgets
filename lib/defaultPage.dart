import 'package:flutter/material.dart';
import 'package:practice_widgets/component/move.dart';
import 'package:practice_widgets/component/testComponent.dart';


class DefaultPage extends StatelessWidget {
  const DefaultPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('기본페이지'),
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          // test
          TestComponent(
              widgetName: 'test',
              onTap: () {
                Navigator.of(context).pushNamed(Move.testPage);
              }),
        ],
      ),
    );
  }
}
