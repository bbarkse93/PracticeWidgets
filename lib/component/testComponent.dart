import 'package:flutter/material.dart';

class TestComponent extends StatelessWidget {
  final String widgetName;
  final VoidCallback onTap;

  const TestComponent({
    super.key,
    required this.widgetName,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 50,
        margin: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
        decoration: BoxDecoration(
          color: Colors.grey,
          border: Border.all(width: 1),
          borderRadius: BorderRadius.circular(50.0),
        ),
        child: Center(
            child: Text(
          widgetName,
          style: const TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
        )),
      ),
    );
  }
}
