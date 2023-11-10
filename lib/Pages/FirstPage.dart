import 'package:flutter/material.dart';
import 'package:flutter_app/Components/ButtonsStyle.dart';

class MyFirst extends StatefulWidget
{
  @override
  _MyFirstState createState() => _MyFirstState();
}

class _MyFirstState extends State<MyFirst> {
  String s='0';
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            title: Text("Calculator"),
            backgroundColor: Colors.teal,

          ),
          body: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Text(s,
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 22,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  operationButtonStyle('1', (){
                  setState(() {
                    s+='1';
                  });
                }),

                  SizedBox(width: 20,),
                  operationButtonStyle('2', (){
                    setState(() {
                      s+='2';
                    });
                  }),
                  SizedBox(width: 20,),
                  operationButtonStyle('3', (){
                    setState(() {
                      s+='3';
                    });
                  }),

                ],
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  operationButtonStyle('4', (){
                    setState(() {
                      s+='4';
                    });
                  }),
                  SizedBox(width: 20,),
                  operationButtonStyle('5', (){
                    setState(() {
                      s+='5';
                    });
                  }),
                  SizedBox(width: 20,),
                  operationButtonStyle('6', (){
                    setState(() {
                      s+='6';
                    });
                  }),

                ],
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  operationButtonStyle('7', (){
                    setState(() {
                      s+='7';
                    });
                  }),
                  SizedBox(width: 20,),
                  operationButtonStyle('8', (){
                    setState(() {
                      s+='8';
                    });
                  }),
                  SizedBox(width: 20,),
                  operationButtonStyle('9', (){
                    setState(() {
                      s+='9';
                    });
                  }),

                ],
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  operationButtonStyle('0', (){
                    setState(() {
                      s+='0';
                    });
                  }),
                  SizedBox(width: 20,),
                  operationButtonStyle('*', (){
                  setState(() {
                    s+=' * ';
                    });
                  }),

                  SizedBox(width: 20,),
                  operationButtonStyle('+', (){
                    setState(() {
                      s+=' + ';
                    });
                  }),

                ],
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  operationButtonStyle('-', (){
                    setState(() {
                      s+=' - ';
                    });
                  }),
                  SizedBox(width: 10,),
                  operationButtonStyle('=', (){
                    List myList = s.split(' ');
                    int result = int.parse(myList[0]);
                    for(int i=1; i<myList.length; i+=2)
                    {
                      if(myList[i] =='+')
                        result+=int.parse(myList[i+1]);
                      else if(myList[i] =='-')
                        result-=int.parse(myList[i+1]);
                      else if(myList[i] =='*')
                        result*=int.parse(myList[i+1]);
                      else if(myList[i] =='/')
                        result~/=int.parse(myList[i+1]);
                    }
                    setState(() {
                      s=result.toString();
                    });
                  }),

                  SizedBox(width: 10,),
                  operationButtonStyle('/', (){
                    setState(() {
                      s+=' / ';
                    });
                  }),
                  SizedBox(width: 10,),
                  operationButtonStyle('del', (){
                    setState(() {
                      s='';
                    });
                  }),
                ],
              ),
            ],
          )
      );
  }
}

