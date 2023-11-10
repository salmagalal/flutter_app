import 'package:flutter/material.dart';

Widget numberButtonStyle (String number, Function press)
{
  return MaterialButton(
    onPressed: press,
    color: Colors.teal,
    child: Text(
      number,
      style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
          color: Colors.white
      ),
    ),
  );
}

Widget operationButtonStyle(String operation,Function press)
{
  return FloatingActionButton(
    onPressed: press,
    backgroundColor: Colors.teal,
    child: Text(
      operation,
      style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
          color: Colors.white
      ),
    ),
  );
}