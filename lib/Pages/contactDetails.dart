import 'package:flutter/material.dart';
import 'package:flutter_app/Models/contacts.dart';

class ContactDetails extends StatelessWidget {
  Contact contact;
  ContactDetails(this.contact);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(250, 98, 0, 238),
    ),
      body: Column(
        children: [
          Image.asset(contact.photo, width: 200, height: 200,),
          ListTile(
              title: Text(contact.name),
              subtitle: Text(contact.type),
              leading: CircleAvatar(backgroundImage: AssetImage(contact.photo),)
          ),
          Column(
            //mainAxisAlignment: MainAxisAlignment.spaceAround,
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(

                //mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(Icons.person,color: Color.fromARGB(250, 84, 110, 122),size: 30,),
                  SizedBox(width: 10,),
                  Text(
                        contact.name,
                        style: TextStyle(
                            fontSize: 18
                        ),
                      )

                ],
              ),
              SizedBox(height: 20,),
              Row(
                //mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(Icons.phone,color: Color.fromARGB(250, 84, 110, 122),size: 30,),
                  SizedBox(width: 10,),

                  Text(
                      contact.phone,
                    style: TextStyle(
                        fontSize: 18
                    ),
                  )
                ],
              ),
              SizedBox(height: 20,),

              Row(
                //mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(Icons.location_on_sharp,color: Color.fromARGB(250, 84, 110, 122),size: 30,),
                  SizedBox(width: 10,),

                  Text(contact.address,
                    style: TextStyle(
                        fontSize: 18
                    ),
                  )
                ],
              ),
              SizedBox(height: 20,),

              Row(
                //mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(Icons.email,color: Color.fromARGB(250, 84, 110, 122),size: 30,),
                  SizedBox(width: 10,),

                  Text(contact.email,
                    style: TextStyle(
                      fontSize: 18
                  ),
                  )
                ],
              ),
              SizedBox(height: 20,),
              MaterialButton(
                height: 50,
                  onPressed: (){} ,
                  child: Text("Add to favorites" ,style: TextStyle(color: Colors.white, fontSize: 21, fontWeight: FontWeight.bold)),
                  color: Color.fromARGB(250, 98, 0, 238),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)
                ),
              ),
            ],
          ),

        ],
    ),
    );
  }
}
