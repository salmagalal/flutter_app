import 'dart:io';

main()
{
  print("Enter first number");
  double num1 = double.parse(stdin.readLineSync());

  print("Enter operation");
  String operator = stdin.readLineSync();

  print("Enter second number");
  double num2 = double.parse(stdin.readLineSync());

  double result;

  if(operator=='+')
      result=num1+num2;
  else if(operator=='-')
      result=num1-num2;
  else if(operator=='*')
      result=num1*num2;
  else if(operator=='/')
      result=num1/num2;
  else
      print("Enter correct operation");

  print("Result is $result");
}