import 'dart:io';

main()
{
  print("Enter grade");
  double grade = double.parse(stdin.readLineSync());

  if(grade>=50 && grade<=65)
    print("good");
  else if(grade>=66 && grade<=85)
    print("very good");
  else if(grade>=86 && grade<=100)
    print("excellent");
  else if(grade>=0 && grade<=50)
    print("fail");
  else if(grade<0 || grade>100)
    print("Enter grade between 0 and 100");
}