import 'package:flutter/material.dart';

class ToggleButton extends StatefulWidget {
  const ToggleButton({super.key});

  @override
  State<ToggleButton> createState() => _ToggleButtonState();
}

class _ToggleButtonState extends State<ToggleButton> {
  List<bool> isSelected = [true, false, false];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ToggleButtons(
              isSelected: isSelected,
              onPressed: (int index) {
                setState(() {
                  for (int i = 0; i < isSelected.length; i++) {
                    isSelected[i] = i == index;
                  }
                });
              },
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Week'),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Month'),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Year'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
