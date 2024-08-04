import 'package:flutter/material.dart';

class PersonalPage extends StatelessWidget {
 final VoidCallback onPressed;
  const PersonalPage({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          TextField(
            decoration: InputDecoration(labelText: 'Name'),
          ),
          TextField(
            decoration: InputDecoration(labelText: 'Phone Number'),
          ),
          TextField(
            decoration: InputDecoration(labelText: 'Date of Birth'),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: onPressed,
            child: Text('Confirm'),
          ),
        ],
      ),
    );
  }
}
