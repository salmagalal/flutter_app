import 'Shape.dart';

class Rectangle extends Shape
{
  double _width;
  double _length;
  Rectangle({double width=0, double length=0, String color="", bool filled=false}): super(color: color, filled: filled)
  {
    this._width = width;
    this._length = length;
  }
  double getWidth()
  {
    return this._width;
  }
  void setWidth(double width)
  {
    this._width = width;
  }
  double getLength()
  {
    return this._length;
  }
  void setLength(double length)
  {
    this._length = length;
  }

  @override
  double getArea() {
    return this._width*this._length;
  }

  @override
  double getPerimeter() {
    return (this._width+this._length)*2;
  }

  @override
  String toString() {
    return "Rectangle width = ${this._width}, length = ${this._length}, area = ${getArea()}, perimeter = ${getPerimeter()},color = ${getColor()}, filled= ${isFilled()}";
  }

}