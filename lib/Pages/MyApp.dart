import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_app/Tabs/Chat.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        drawer: Drawer(
          child: ListView(
            children: [
              UserAccountsDrawerHeader(
                accountName: Text("Salma Ahmed"),
                accountEmail: Text("salma@gmail.com"),
                currentAccountPicture: CircleAvatar(backgroundImage: AssetImage('assets/images/angry.jpg'),
              )
              ),
              Card(
                color: Colors.black12,
                child: ListTile(
                  title: Text("Settings",style: TextStyle(color: Colors.white, fontSize: 15),),
                  trailing: Icon(Icons.settings),
                ),
              ),
              Divider(
                thickness: 2,
                indent: 18,
                endIndent: 18,
              ),
              Card(
                color: Colors.black12,
                child: ListTile(
                  title: Text("Help & support",style: TextStyle(color: Colors.white, fontSize: 15),),
                  trailing: Icon(Icons.help),
                ),
              ),
              Divider(
                thickness: 2,
                indent: 18,
                endIndent: 18,
              ),
              Card(
                color: Colors.black12,
                child: ListTile(
                  title: Text("Community resources",style: TextStyle(color: Colors.white, fontSize: 15),),
                  trailing: Icon(Icons.grade),
                ),
              ),
              SizedBox(height: 50,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: MaterialButton(
                  onPressed: (){} ,
                  child: Text("Log Out" ,style: TextStyle(color: Colors.white, fontSize: 17, fontWeight: FontWeight.bold)),
                  color: Colors.blue,
                ),
              )
            ],
          ),
        ),
        appBar: AppBar(
          backgroundColor: Colors.black87,
          bottom: TabBar(
            unselectedLabelColor: Colors.grey,
            labelColor: Colors.blueAccent,
            indicatorColor: Colors.blueAccent ,
            tabs: [
              Tab(
                icon:  Icon(Icons.chat_rounded),
                text: 'Chats'
              ),
              Tab(
                icon:  Icon(Icons.call),
                text: 'Calls',
              ),
              Tab(
                icon: Icon(Icons.perm_contact_calendar_rounded),
                text: 'Contacts',
              ),
              Tab(
                icon: Icon(Icons.notifications),
                text: 'Notifications',
              ),
            ],
          ),
        ),
        body: TabBarView(
            children: [
              Chat(),
              Center(child: Text("Calls")),
              Center(child: Text("Contacts")),
              Center(child: Text("Notifications")),
            ]
        )
      ),
    );
  }
}
