import 'dart:io';

main()
{
  List list = [];

  String repeat;
  do{
    print("Choose operation from 1 to 4:\n 1-Add element to a list.\n 2-Update element with another value.\n 3-Remove element from the list.\n 4-Show the list.");
    String ch = stdin.readLineSync();
    switch(ch)
    {
      case'1':
        print("Enter number of elements you want to add");
        int noOfElements = int.parse(stdin.readLineSync());
        print("Enter $noOfElements elements");
        for(int i=0; i<noOfElements; i++)
          {
            int element = int.parse(stdin.readLineSync());
            list.add(element);
          }
        print("Successfully added");
        break;
      case'2':
        print("Enter element you want to update its value");
        int oldValue = int.parse(stdin.readLineSync());
        print("Enter the new value");
        int newValue = int.parse(stdin.readLineSync());
        if(list.contains(oldValue))
          {
            int index = list.indexOf(oldValue);
            list.remove(oldValue);
            list.insert(index, newValue);
            print("Successfully updated");
          }
        else
          print("Enter element from the list");
        break;
      case'3':
        print("Enter index you want to delete element from it");
        int index = int.parse(stdin.readLineSync());
        if(index>=0 && index<list.length)
          {
            list.removeAt(index);
            print("Successfully deleted");
          }
        else
          print("Enter correct index");
        break;
      case'4':
        print("The list: ");
        for(int i=0; i<list.length; i++)
          print(list[i]);
        break;
      default:
        print("Enter correct choice");
    }
    print("Do you want to do anothe operation? enter y if you want");
    repeat = stdin.readLineSync();
  } while(repeat=='y');
}