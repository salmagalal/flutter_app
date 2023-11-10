import "dart:io" ;

import 'Student.dart';

main()
{
  Student s1 = Student();
  print("Initial: name: ${s1.getName()}, Id:${s1.getId()}, Degree: ${s1.getDegree()}");
  print("Enter new name: ");
  s1.setName(stdin.readLineSync());
  print("Initial: name: ${s1.getName()}, Id:${s1.getId()}, Degree: ${s1.getDegree()}");
}
