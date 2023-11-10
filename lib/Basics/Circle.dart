

import 'Shape.dart';

class Circle extends Shape
{
  double _radius;
  Circle({double radius, String color, bool filled}): super(color: color, filled: filled)
  {
    this._radius = radius;
  }
  double getRadius()
  {
    return this._radius;
  }
  void setRadius(double radius)
  {
    this._radius = radius;
  }

  @override
  double getArea() {
    return 3.14*this._radius*this._radius;
  }

  @override
  double getPerimeter() {
    return 2*3.14*this._radius;
  }

  @override
  String toString() {
    return "Circle radius = ${this._radius}, area = ${getArea()}, perimeter = ${getPerimeter()},color = ${getColor()}, filled= ${isFilled()}";
  }

}