import 'package:flutter/material.dart';

class AccountPage extends StatelessWidget {
  final VoidCallback onPressed;
  const AccountPage({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          TextField(
            decoration: InputDecoration(labelText: 'Email'),
          ),
          TextField(
            decoration: InputDecoration(labelText: 'Password'),
            obscureText: true,
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
