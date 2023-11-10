import 'dart:io';

main()
{
  print("Enter first number");
  int x = int.parse(stdin.readLineSync());

  print("Enter second number");
  int y = int.parse(stdin.readLineSync());

  if(x>y)
    {
      print("$x is greater than $y");
    }
  else
    {
      print("$y is greater than $x");
    }
}