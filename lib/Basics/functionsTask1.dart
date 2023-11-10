import 'dart:io';

main()
{
  print("Choose an operation: +, -, *, /");
  String op = stdin.readLineSync();
  print("Enter 2 numbers");
  double num1 = double.parse(stdin.readLineSync()), num2 = double.parse(stdin.readLineSync());

  switch(op)
  {
    case '+':
      print(sum(num1,num2));
      break;
    case'-':
      print(subtract(num1,num2));
      break;
    case'*':
      print(multiply(num1, num2));
      break;
    case'/':
      print(divide(num1,num2));
      break;
    default:
      print("Enter correct operation");
  }
}

sum(double x, double y)
{
  return x+y;
}

subtract(double x, double y)
{
  return x-y;
}

multiply(double x, double y)
{
  return x*y;
}

divide(double x, double y)
{
  return x/y;
}