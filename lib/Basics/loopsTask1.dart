import 'dart:io';

main()
{
  print("Enter number");
  int num = int.parse(stdin.readLineSync());
  print("Enter stop number");
  int stopNum = int.parse(stdin.readLineSync());
  int i=1;
  while(i<=stopNum)
    {
      print("$i * $num = ${i*num}");
      i++;
    }
}