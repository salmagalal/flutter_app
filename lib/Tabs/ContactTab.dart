import 'package:flutter/material.dart';
import 'package:flutter_app/Models/contacts.dart';
import 'package:flutter_app/Models/inbox.dart';
import 'package:flutter_app/Pages/contactDetails.dart';

class ContactTab extends StatelessWidget {
  List<Contact> contacts = [
    Contact("Salma Ahmed", "0123456789", "Cairo, Egypt", "salma@email.com", "Work Contact","assets/images/p3.jpg"),
    Contact("Habiba Ahmed", "0123456789", "Alexandria, Egypt", "habiba@email.com", "Work Contact","assets/images/cat.jpg"),
    Contact("Farida Ahmed", "0123456789", "Cairo, Egypt", "farida@email.com", "Work Contact","assets/images/face.jpg"),
    Contact("Sara Ahmed", "0123456789", "Suez, Egypt", "sara@email.com", "Work Contact","assets/images/p2.jpg"),
    Contact("Sahar Ahmed", "0123456789", "Cairo, Egypt", "sahar@email.com", "Work Contact","assets/images/p1.jpg"),
    Contact("Yasmine Ahmed", "0123456789", "Cairo, Egypt", "yasmine@email.com", "Work Contact","assets/images/joey.jpg"),
    Contact("Fatma Ahmed", "0123456789", "Cairo, Egypt", "fatma@email.com", "Work Contact","assets/images/angry.jpg"),
    Contact("Sohila Ahmed", "0123456789", "Cairo, Egypt", "sohila@email.com", "Work Contact","assets/images/cat.jpg"),
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
            "Contacts",
            style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold
            ),
          ),

        ),
        body: ListView(
          children: [
            for(int i=0; i<contacts.length; i++)
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(17),
                  ),
                  elevation: 5,
                  shadowColor: Colors.grey,
                  child: Column(
                    children: [
                      Image.asset(contacts[i].photo,width: 200, height: 200,),
                      ListTile(

                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (con){
                            return ContactDetails(contacts[i]);
                          }));
                        },

                        title: Text(contacts[i].name),
                        subtitle: Text(contacts[i].type),
                        leading: CircleAvatar(backgroundImage: AssetImage(contacts[i].photo),),
                      ),
                    ],
                  ),
                ),
              )
          ],
        )
    );
  }
}
