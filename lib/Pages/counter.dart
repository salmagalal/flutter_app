import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  @override
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int number=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter",),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(number.toString(),style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              MaterialButton(
                onPressed: (){
                  setState(() {
                    number++;
                  });
                },
                child: Text("+", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),),
                color: Colors.blue,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)
                ),
              ),
              MaterialButton(
                onPressed: (){
                  setState(() {
                    number--;
                  });
                },
                child: Text("-", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),),
                color: Colors.blue,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)
                ),
              ),
            ],
          ),
          MaterialButton(
            onPressed: (){
              setState(() {
                number=0;
              });
            },
            child: Text("Reset", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),),
            color: Colors.blue,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30)
            ),
          ),
        ],
      ),
    );
  }
}
