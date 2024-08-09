import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoSegmentedControlExample extends StatefulWidget {
  const CupertinoSegmentedControlExample({super.key});

  @override
  State<CupertinoSegmentedControlExample> createState() =>
      _CupertinoSegmentedControlExampleState();
}

class _CupertinoSegmentedControlExampleState
    extends State<CupertinoSegmentedControlExample> {
  String _selectedSegment = 'Week';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: SizedBox(
            width: double.infinity,
            child: CupertinoSegmentedControl<String>(
              children: const {
                'Week': Text('Week'),
                'Month': Text('Month'),
                'Year': Text('Year'),
              },
              onValueChanged: (String value) {
                setState(() {
                  _selectedSegment = value;
                });
                print(value);
              },
              groupValue: _selectedSegment,
            ),
          ),
        ),
      ],
    );
  }
}
