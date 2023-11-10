import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/Models/ChatClass.dart';
import 'package:flutter_app/Pages/ChatDetails.dart';

class Chat extends StatelessWidget {
  List<ChatClass> chats = [
    ChatClass("Salma Ahmed", "Good Morning", 'assets/images/angry.jpg', "Wed"),
    ChatClass("Habiba Ahmed", "Hello", 'assets/images/joey.jpg', "Sat"),
    ChatClass("Farida Ahmed", "I need your help", 'assets/images/cat.jpg', "Fri"),
    ChatClass("Sahar Farouk", "Call me", 'assets/images/prof1.jpg', "Tue"),
    ChatClass("Sara Ali", "Good Morning", 'assets/images/angry.jpg', "Wed"),
    ChatClass("Salma Osman", "Hello", 'assets/images/joey.jpg', "Sat"),
    ChatClass("Ahmed Galal", "I need your help", 'assets/images/cat.jpg', "Fri"),
    ChatClass("Mohamed Ahmed", "Call me", 'assets/images/prof1.jpg', "Tue"),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black87,
      child: ListView(
        children: [
          for(int i=0; i<chats.length; i++)
          Card(
            elevation: 5,
            shadowColor: Colors.grey,
            child: ListTile(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (con){
                  return ChatDetails(chats[i]);
                }));
              },
              title: Text(chats[i].name),
              subtitle: Text(chats[i].message),
              trailing: Text(chats[i].date),
              leading: CircleAvatar(backgroundImage: AssetImage(chats[i].profile),),
            ),
          )
        ],
      )
      /*SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                      child: Text(
                          "Meet Now",
                          style: TextStyle(
                              fontSize: 13,
                              color: Colors.white
                          )
                      ),
                      style: ButtonStyle(
                          foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                          backgroundColor: MaterialStateProperty.all<Color>(Colors.black54),
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18.0),
                                  side: BorderSide(color: Colors.grey)
                              )
                          )
                      ),
                      onPressed: () {}
                  ),
                  ElevatedButton(
                      child: Text(
                          "New Chat",
                          style: TextStyle(
                              fontSize: 13,
                              color: Colors.white
                          )
                      ),
                      style: ButtonStyle(
                          foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                          backgroundColor: MaterialStateProperty.all<Color>(Colors.black54),
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18.0),
                                  side: BorderSide(color: Colors.grey)
                              )
                          )
                      ),
                      onPressed: () {}
                  )
                  ],
              ),
            ),
            for(int i=0; i<chats.length; i++)
            Column(
              children: [
                InkWell(
                  onTap: (){
                    print(chats[i].name);
                    Navigator.of(context).push((MaterialPageRoute(
                      builder: (con){
                        return ChatDetails(chats[i]);
                      }
                    )));
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            CircleAvatar(
                              backgroundImage: AssetImage(chats[i].profile),

                            )
                          ],
                        ),
                        SizedBox(width: 10,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(chats[i].name, style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.bold),),
                            SizedBox(height: 7,),
                            Text(chats[i].message, style: TextStyle(color: Colors.white, fontSize: 14,))
                          ],
                        ),
                        SizedBox(width: 200,),
                        Column(
                          //crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(chats[i].date, style: TextStyle(color: Colors.white, fontSize: 12,)),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Divider(
                  thickness: 2,
                  indent: 14,
                  endIndent: 18,
                ),
              ],
            ),

          ],
        ),
      ),*/
    );
  }

}