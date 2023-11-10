import 'dart:io';

main()
{
  int children;
  int years;
  double salary;

  print("Enter your marital status");
  String status = stdin.readLineSync();

  if(status=='m')
    {
      print("Enter your children number");
      children = int.parse(stdin.readLineSync());
      if(children>=0 && children<=3)
        salary = 1200+children.toDouble()*150;
      else if(children>=4 && children<=6)
        salary = 1800+children.toDouble()*250;
      else if(children>=7)
        salary = 2000+children.toDouble()*300;
      else
        print("Enter correct number");
    }
  else if(status=='s')
  {
    print("Enter your years of work");
    years = int.parse(stdin.readLineSync());
    if(years>=0 && years<=5)
      salary = 1000+years.toDouble()*200;
    else if(years>=6 && years<=10)
      salary = 1500+years.toDouble()*400;
    else if(years>=11)
      salary = 2000+years.toDouble()*600;
    else
      print("Enter correct number");
  }
  else
    print("Enter m or s only");
  print("Your salary is $salary");
}