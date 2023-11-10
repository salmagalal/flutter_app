import 'dart:io';

main()
{
  double c=12.25;
  double t=50.25;
  double h=60;

  print("How many items do you want from item c?");
  int itemsC = int.parse(stdin.readLineSync());

  print("How many items do you want from item c?");
  int itemsT = int.parse(stdin.readLineSync());

  print("How many items do you want from item c?");
  int itemsH = int.parse(stdin.readLineSync());

  double totalC = itemsC*c;
  print("Total of C = " + totalC.toString());

  double totalT = itemsT*t;
  print("Total of T = " + totalT.toString());

  double totalH = itemsH*h;
  print("Total of H = " + totalH.toString());

  double total = totalC+totalT+totalH;
  print("Total of all items = "+ total.toString());

  double totalAfterDiscount = total - total*0.1;
  print("Total after discount = " + totalAfterDiscount.toString());
}