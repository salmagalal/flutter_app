import "dart:io" ;

class Complex
{
  int x;
  double y;

  Complex sum(Complex c)
  {
    Complex result = Complex();
    result.x = this.x + c.x;
    result.y = this.y + c.y;
    return result;
  }

  Complex subtract(Complex c)
  {
    Complex result = Complex();
    result.x = this.x - c.x;
    result.y = this.y - c.y;
    return result;
  }

  Complex multiply(Complex c)
  {
    Complex result = Complex();
    result.x = this.x * c.x;
    result.y = this.y * c.y;
    return result;
  }

  Complex divide(Complex c)
  {
    Complex result = Complex();
    result.x = (this.x / c.x) as int;
    result.y = this.y / c.y;
    return result;
  }

  void showData()
  {
    print("The complex result: x=${this.x}, y=${this.y}");
  }

  void getData()
  {
    print("Enter x");
    this.x = int.parse(stdin.readLineSync());
    print("Enter y");
    this.y = double.parse(stdin.readLineSync());
  }
}

main()
{
  Complex c1 = Complex();
  Complex c2 = Complex();
  Complex result = Complex();
  print("Enter first complex data");
  c1.getData();
  print("Enter second student data");
  c2.getData();
  print("Choose an operation: +, -, *, /");
  String op = stdin.readLineSync();
  switch(op)
  {
    case '+':
      result = c1.sum(c2);
      result.showData();
      break;
    case'-':
      result = c1.subtract(c2);
      result.showData();
      break;
    case'*':
      result = c1.multiply(c2);
      result.showData();
      break;
    case'/':
      result = c1.divide(c2);
      result.showData();
      break;
    default:
      print("Enter correct operation");
  }

}
