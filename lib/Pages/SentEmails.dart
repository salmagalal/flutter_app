import 'package:flutter/material.dart';
import 'package:flutter_app/Models/email.dart';

class Sent extends StatefulWidget {
  Email sentEmail;
  Sent(this.sentEmail);

  @override
  _SentState createState() => _SentState();
}

class _SentState extends State<Sent> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: InkWell(
        onTap: () {
          print("${Sent}");
        },
        child: Column(
          children: [

          ],
        ),
      ),
    );
  }
}
