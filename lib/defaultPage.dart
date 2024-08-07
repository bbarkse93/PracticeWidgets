import 'package:flutter/material.dart';
import 'package:practice_widgets/component/move.dart';
import 'package:practice_widgets/component/testComponent.dart';


class DefaultPage extends StatelessWidget {
  const DefaultPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
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
          TestComponent(
              widgetName: 'expansionPanelList',
              onTap: () {
                Navigator.of(context).pushNamed(Move.expansionPanelListPage);
              }),
          TestComponent(
              widgetName: 'pageView',
              onTap: () {
                Navigator.of(context).pushNamed(Move.pageViewPage);
              }),
          TestComponent(
              widgetName: 'syncfusionFlutterCharts',
              onTap: () {
                Navigator.of(context).pushNamed(Move.syncfusionFlutterChartsPage);
              })

        ],
      ),
    );
  }
}
