import 'package:flutter/material.dart';

class MessagesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
            appBar: AppBar(
                    title: Text('Messages',
                        style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                        ),
                    ),
            ),
            body: Center(
                    child: Text('Messages Page yet to be constructed'),
            ),
    );
  }
}
