import 'package:flutter/material.dart';
import 'package:flutter_app/Tabs/Chat.dart';

class Second extends  StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4, 
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Icon(Icons.chat),
                Icon(Icons.call),
                Icon(Icons.contacts),
                Icon(Icons.notifications)
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Chat(),
              Center(child: Text("Calls")),
              Center(child: Text("Contacts")),
              Center(child: Text("Notifications"))
            ],
          ),
        )
    );
  }

}