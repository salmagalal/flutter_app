import 'package:flutter/material.dart';
import 'package:flutter_app/Models/inbox.dart';

class InboxTab extends StatelessWidget {
  List<Inbox> emails = [
    Inbox("assets/images/p3.jpg", "Brunch this weekend?", "I'll be in your neighborhood this weekend...", "Wed"),
    Inbox("assets/images/cat.jpg", "Summer BBQ", "Wish I could come, but I'm out of town thi...", "Wed"),
    Inbox("assets/images/joey.jpg", "Oui Oui", "Do you have Paris recommendations? Ha...", "Tue"),
    Inbox("assets/images/p2.jpg", "Birthday Gift", "Have any ideas about what we should get...", "Tue"),
    Inbox("assets/images/p1.jpg", "Recipe to try", "We should eat this: grated squash, corn, a...", "Mon"),
    Inbox("assets/images/face.jpg", "Game night", "Should we organize another game night li...", "Mon"),
    Inbox("assets/images/angry.jpg", "Summer Vacation", "I'll be in your neighborhood this weekend...", "Sun"),
    Inbox("assets/images/p3.jpg", "Brunch this weekend?", "I'll be in your neighborhood this weekend...", "Wed"),
    Inbox("assets/images/cat.jpg", "Summer BBQ", "Wish I could come, but I'm out of town thi...", "Wed"),
    Inbox("assets/images/joey.jpg", "Oui Oui", "Do you have Paris recommendations? Ha...", "Tue"),
    Inbox("assets/images/p2.jpg", "Birthday Gift", "Have any ideas about what we should get...", "Tue"),
    Inbox("assets/images/p1.jpg", "Recipe to try", "We should eat this: grated squash, corn, a...", "Mon"),
    Inbox("assets/images/face.jpg", "Game night", "Should we organize another game night li...", "Mon"),
    Inbox("assets/images/angry.jpg", "Summer Vacation", "I'll be in your neighborhood this weekend...", "Sun"),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            Card(
              color: Colors.black12,
              child: ListTile(
                title: Text("Settings",style: TextStyle(color: Colors.white, fontSize: 15),),
                trailing: Icon(Icons.settings),
              ),
            ),
            Divider(
              thickness: 1,
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
              thickness: 1,
              indent: 18,
              endIndent: 18,
            ),
            Card(
              color: Colors.black12,
              child: ListTile(
                title: Text("Sent",style: TextStyle(color: Colors.white, fontSize: 15),),
                trailing: Icon(Icons.send),
              ),
            ),
            SizedBox(height: 50,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: MaterialButton(
                  onPressed: (){} ,
                  child: Text("Log Out" ,style: TextStyle(color: Colors.white, fontSize: 17, fontWeight: FontWeight.bold)),
                  color: Color.fromARGB(250, 98, 0, 238)
              ),
            )
          ],
        ),

      ),
      appBar: AppBar(
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.search)),
          IconButton(onPressed: (){}, icon: Icon(Icons.more_vert)),
        ],
        backgroundColor: Color.fromARGB(250, 98, 0, 238),
        title: Text(
          "Inbox",
          style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold
          ),
        ),

      ),
      body: ListView(
        children: [
          for(int i=0; i<emails.length; i++)
            Column(
              children: [
                ListTile(
                    onTap: (){
                    },
                    title: Text(emails[i].subject),
                    subtitle: Text(emails[i].message),
                    leading: CircleAvatar(backgroundImage: AssetImage(emails[i].photo),),
                    trailing: Text(emails[i].date),
                  ),
                Divider(
                  thickness: 1,
                  indent: 70,
                ),
              ],
            ),
        ],
      )
    );
  }
}
