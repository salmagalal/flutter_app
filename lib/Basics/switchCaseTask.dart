import 'dart:io';

main()
{
  double num1;
  double num2;
  String op;
  double result;

  print("Enter first number");
  num1 = double.parse(stdin.readLineSync());

  print("Enter operation");
  op = stdin.readLineSync();

  print("Enter second number");
  num2 = double.parse(stdin.readLineSync());

  switch(op)
  {
    case'+':
      result=num1+num2;
      break;
    case'-':
      result=num1-num2;
      break;
    case'*':
      result=num1*num2;
      break;
    case'/':
      result=num1/num2;
      break;
    default:
      print("Enter correct operation");
  }
  print("Result is $result");
}