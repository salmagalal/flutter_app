import "dart:io" ;

class Student
{
  int id;
  String name;
  double degree;
  void showData()
  {
    print("Student Id: ${this.id}, Student name: ${this.name}, Student degree: ${this.degree}");
  }
  void getData()
  {
    print("Enter Student Id");
    this.id = int.parse(stdin.readLineSync());
    print("Enter Student name");
    this.name = stdin.readLineSync();
    print("Enter Student degree");
    this.degree = double.parse(stdin.readLineSync());
  }
}

main()
{
  Student s1 = Student();
  Student s2 = Student();
  print("Enter first student data");
  s1.getData();
  print("Enter second student data");
  s2.getData();
  print("First student:");
  s1.showData();
  print("Second student");
  s2.showData();
}
