import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final VoidCallback onPressed;

  const DetailPage({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          TextField(
            decoration: InputDecoration(labelText: 'Detail 1'),
          ),
          TextField(
            decoration: InputDecoration(labelText: 'Detail 2'),
          ),
          TextField(
            decoration: InputDecoration(labelText: 'Detail 3'),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: onPressed,
            child: Text('Submit'),
          ),
        ],
      ),
    );
  }
}
