import 'dart:io';

main()
{
  List list = [12,15,10];
  Map map = {};
  int key, value;
  for (int i=0; i<list.length; i++)
  {
    key = i;
    value = list[i];
    map[key] = value;
  }
  print(map);

  int sum=0;
  for (int i=0; i<map.length; i++)
    sum+=map[i];

  print("Sun is $sum");

  print("Map is: ");
  for(int i=0; i<map.length; i++)
    print(map[i]);
}
