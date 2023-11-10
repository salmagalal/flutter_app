abstract class Shape
{
  String _color;
  bool _filled;

  Shape({String color,bool filled})
  {
    this._color = color;
    this._filled = filled;
  }
  String getColor()
  {
    return this._color;
  }
  void setColor(String color)
  {
    this._color = color;
  }
  bool isFilled()
  {
    return this._filled;
  }
  void setFilled(bool filled)
  {
    this._filled = filled;
  }
  double getArea();
  double getPerimeter();
  String toString();
}