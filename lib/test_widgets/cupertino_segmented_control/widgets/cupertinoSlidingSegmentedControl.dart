import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoSlidingSegmentedControlExample extends StatefulWidget {
  const CupertinoSlidingSegmentedControlExample({super.key});

  @override
  State<CupertinoSlidingSegmentedControlExample> createState() =>
      _CupertinoSlidingSegmentedControlExampleState();
}

class _CupertinoSlidingSegmentedControlExampleState
    extends State<CupertinoSlidingSegmentedControlExample> {
  String _selectedSegment = 'Week';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.all(16.0),
          child: SizedBox(
            width: double.infinity,
            child: CupertinoSlidingSegmentedControl<String>(
              children: const {
                'Week': Text('Week'),
                'Month': Text('Month'),
                'Year': Text('Year'),
              },
              onValueChanged: (String? value) {
                setState(() {
                  _selectedSegment = value!;
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
