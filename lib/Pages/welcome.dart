import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/Pages/composeEmail.dart';
import 'package:flutter_app/Tabs/ContactTab.dart';
import 'package:flutter_app/Tabs/InboxTab.dart';

class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        bottomNavigationBar: BottomAppBar(
          color: Color.fromARGB(250, 98, 0, 238),
          child: TabBar(
            indicatorColor: Color.fromARGB(250, 3, 218, 197,),
            tabs: [
              IconButton(icon: Icon(Icons.email), onPressed: (){}),
              IconButton(icon: Icon(Icons.perm_contact_calendar_sharp), onPressed:(){}),
              IconButton(icon: Icon(Icons.favorite), onPressed: (){}),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Color.fromARGB(250, 3, 218, 197,),
            child: Icon(Icons.add),
            onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (con){
                  return Compose();
                }));

            }
            ),
        floatingActionButtonLocation: FloatingActionButtonLocation.miniEndDocked,
        body: TabBarView(
          children: [
            InboxTab(),
            ContactTab(),
            Center(child: Text("Favorites"))
          ],
        ),
      ),
    );
  }
}
