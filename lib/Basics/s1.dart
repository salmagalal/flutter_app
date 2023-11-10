import "dart:io" ;

import 'Circle.dart';
import 'Rectangle.dart';

main()
{

  Rectangle rectangle = Rectangle(width: 4, length: 5, color: "red", filled: false);
  Circle circle = Circle(radius: 5, color: "white", filled: true);
  print(rectangle.toString());
  print(circle.toString());
}
