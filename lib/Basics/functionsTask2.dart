import 'dart:io';

main()
{
  List list=[];

  print("How many elements you want to add to list");
  int size = int.parse(stdin.readLineSync());

  print("Enter $size elements");
  double element;
  for(int i=0; i<size; i++)
  {
    element = double.parse(stdin.readLineSync());
    list.add(element);
  }

  print("The list: $list");
  print("Sum of list: ${sumL(list)}");
  print("Max in list: ${maxL(list)}");
  print("Min in list: ${minL(list)}");
  print("Average of list: ${avgL(list, size)}");

}

sumL(List list)
{
  double sum = 0;
  for(int i=0; i<list.length; i++)
  {
    sum+=list[i];
  }
  return sum;
}

maxL(List list)
{
  double max = list[0];
  for(int i=1; i<list.length; i++)
  {
    if(list[i]>max)
      max = list[i];
  }
  return max;
}

minL(List list)
{
  double min = list[0];
  for(int i=1; i<list.length; i++)
  {
    if(list[i]<min)
      min = list[i];
  }
  return min;
}

avgL(List list, int size)
{
  double avg = sumL(list)/size;
  return avg;
}
