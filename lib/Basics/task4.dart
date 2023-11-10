import 'dart:io';

main()
{
  print("Enter character");
  String x = stdin.readLineSync();

  if(x=='A')
    print(10);
  else if(x=='B')
    print(20);
  else if(x=='C')
    print(30);
  else
    print(0);
}