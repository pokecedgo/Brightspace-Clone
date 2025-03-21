import 'package:flutter/material.dart';
import '../headers.dart';

class BrightspaceTicketPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainHeader(offset: 130.0),
      body: Column(
        children: [
          SecondaryHeader(
            offset: 130.0,
            onHomePressed: () {
              Navigator.of(context).pop();
            },
          ),
          Expanded(
            child: Center(
              child: Text("Ticket Page"),
            ),
          ),
        ],
      ),
    );
  }
}
