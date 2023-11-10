class Student
{
  int _id;
  String _name;
  double _degree;

  Student({int id=0, String name="Salma", double degree=90})
  {
    this._id = id;
    this._name = name;
    this._degree = degree;
  }
  void setId(int id)
  {
    this._id = id;
  }

  int getId()
  {
    return this._id;
  }

  void setName(String name)
  {
    this._name = name;
  }

  String getName()
  {
    return this._name;
  }

  void setDegree(double degree)
  {
    this._degree = degree;
  }

  double getDegree()
  {
    return this._degree;
  }
}
