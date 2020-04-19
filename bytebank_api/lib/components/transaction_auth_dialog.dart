import 'package:flutter/material.dart';

class TransactionaAuthDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Authenticate'),
      content: TextField(
        obscureText: true,
        maxLength: 4,
        decoration: InputDecoration(
          border: OutlineInputBorder()
        ),
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        style: TextStyle(fontSize: 64,letterSpacing: 32),
      ),

      actions: <Widget>[
        FlatButton(
          onPressed: () {
            print('Cancel');
          },
          child: Text('Cancel'),
        ),
        FlatButton(
          onPressed: () {
            print('Confirm');
          },
          child: Text('Confirm'),
        ),
      ],
    );
  }
}
