import 'dart:io';

main()
{
  print("Enter first number");
  int first = int.parse(stdin.readLineSync());
  print("Enter last number");
  int last = int.parse(stdin.readLineSync());
  int i=first;
  while(i<=last)
  {
    print("$i ");
    i++;
  }
}