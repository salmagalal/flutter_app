import 'package:flutter/material.dart';
import 'package:flutter_app/Models/ChatClass.dart';

class ChatDetails extends StatelessWidget {
  ChatClass _chatClass;
  ChatDetails(this._chatClass);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        title: Text(_chatClass.name),
      ),
      body: Image.asset(_chatClass.profile),
    );
  }
}
