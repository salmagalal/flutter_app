import 'package:flutter/material.dart';
import 'package:flutter_app/Models/email.dart';

class Compose extends StatelessWidget {
  TextEditingController to = TextEditingController();
  TextEditingController from = TextEditingController();
  TextEditingController subject = TextEditingController();
  TextEditingController message = TextEditingController();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Color.fromARGB(250, 98, 0, 238),
        title: Text("Compose email"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextFormField(
              controller: to,
              decoration: InputDecoration(
                  labelText: "To",
                labelStyle: TextStyle(
                    color: Colors.grey
                ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25.0),
                    borderSide: BorderSide(
                      color: Color.fromARGB(250, 98, 0, 238),
                      width: 2.0,
                    ),
                  ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25.0),
                  borderSide: BorderSide(
                    color: Color.fromARGB(250, 98, 0, 238),
                    width: 2.0,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextFormField(
              controller: from,
              decoration: InputDecoration(
                labelText: "From",
                labelStyle: TextStyle(
                    color: Colors.grey
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25.0),
                  borderSide: BorderSide(
                    color: Color.fromARGB(250, 98, 0, 238),
                    width: 2.0,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25.0),
                  borderSide: BorderSide(
                    color: Color.fromARGB(250, 98, 0, 238),
                    width: 2.0,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextFormField(
              controller: subject,
              decoration: InputDecoration(
                labelText: "Subject",
                labelStyle: TextStyle(
                    color: Colors.grey
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25.0),
                  borderSide: BorderSide(
                    color: Color.fromARGB(250, 98, 0, 238),
                    width: 2.0,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25.0),
                  borderSide: BorderSide(
                    color: Color.fromARGB(250, 98, 0, 238),
                    width: 2.0,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextFormField(
              controller: message,
              decoration: InputDecoration(
                labelText: "Message",
                labelStyle: TextStyle(
                  color: Colors.grey
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25.0),
                  borderSide: BorderSide(
                    color: Color.fromARGB(250, 98, 0, 238),
                    width: 2.0,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25.0),
                  borderSide: BorderSide(
                    color: Color.fromARGB(250, 98, 0, 238),
                    width: 2.0,
                  ),
                ),
              ),
            ),
          ),
          MaterialButton(
            onPressed: (){
              Email(to.toString(),from.toString(),subject.toString(),message.toString());

            },
            child: Text("Send", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),),
            color: Color.fromARGB(250, 98, 0, 238),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30)
            ),
          ),
        ],
      ),
    );
  }
}
