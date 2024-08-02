import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ExpansionPanelListPage extends StatefulWidget {
  const ExpansionPanelListPage({super.key});

  @override
  State<ExpansionPanelListPage> createState() => _ExpansionPanelListPageState();
}

class _ExpansionPanelListPageState extends State<ExpansionPanelListPage> {
  int? _expandedIndex;
  final List<String> titles = [
    'title1',
    'title2',
    'title3',
    'title4',
    'title5',
    'title6',
  ];
  final String content = 'content';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: List.generate(titles.length, (index) {
          return _buildExpansionPanelList(index, titles[index], content);
        }),
      ),
    );
  }

  Widget _buildExpansionPanelList(int index, String title, String content) {
    return ExpansionPanelList(
      elevation: 1,
      expansionCallback: (int panelIndex, bool isExpanded) {
        setState(() {
          _expandedIndex = _expandedIndex == index ? null : index;
        });
      },
      children: [
        ExpansionPanel(
            headerBuilder: (context, isExpanded) {
              return ListTile(
                title: Text(title),
                tileColor: Colors.white,
                onTap: () {
                  setState(() {
                    _expandedIndex = _expandedIndex == index ? null : index;
                  });
                },
              );
            },
            body: Container(
              color: Colors.white,
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 25.0,
                      height: 25.0,
                      child: Icon(Icons.person),
                    ),
                    SizedBox(width: 8.0),
                    Expanded(
                      child: Text(content),
                    ),
                  ],
                ),
              ),
            ),
            isExpanded: _expandedIndex == index,
            backgroundColor: Colors.white),
      ],
    );
  }
}
