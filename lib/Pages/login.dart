import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       title: Text("Login"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextFormField(
              controller: username,
              decoration: InputDecoration(
                labelText: "Username",
                hintText: "Enter username",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15)
                ),
                prefixIcon: Icon(Icons.person)
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextFormField(
              controller: password,
              obscureText: true,
              onChanged: (c){
                print(c);
              },
              decoration: InputDecoration(
                  labelText: "Password",
                  hintText: "Enter password",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15)
                  ),
                  prefixIcon: Icon(Icons.password_rounded),
                  suffixIcon: IconButton(
                      icon: Icon(Icons.remove_red_eye),
                      onPressed: (){
                         
                      },
                  )
              ),
            ),
          ),
          MaterialButton(
              onPressed: (){
                print("username is ${username.text}");
                print("password is ${password.text}");
              },
              child: Text("Login", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),),
              color: Colors.blue,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30)
              ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Don\'t have an account'),
              TextButton(onPressed: (){}, child: Text('SignUp'))
            ],
          ),
        ],
      ),
    );
  }
}
