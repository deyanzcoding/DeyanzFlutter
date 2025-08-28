import 'dart:io';


//class demonstration
class Human {
  //default constructor
  Human();

}

class myClass {
  void printHello() {
    print("Hello World");
  }

  void printMyName(String name) {
    print(name);
  }
}

void main() {
  // simple input and print
  print('Wellcome to Dart!');
  stdout.write('Enter you Name : ');

  var name = stdin.readLineSync();
  print("Hello!, $name");

  //object creation for class(above)
  Human();

  //Decleration of Variable
  //int
  int a = 5; 
  print(a);

  //BigInt
  BigInt longInt;
  longInt = BigInt.parse('999999999999999999999999999');
  print(longInt);

  //num (float)
  num c = 99.34;
  print(c);

  //bool(true/false)
  bool isLogin = false;

  //string
  String myName = "Deyan Ahmad";

  //
  var subject = "math"; 
  print(subject);

//  subject = 7  gives error because it becomes string. 


//dynamic var
Object section;
  section = "deyan";   
  section = 12;
  section = false;

  //=======================<Function>======================
  var myC = myClass();
  myC.printHello();   //simple function

  //parameterized function
  myC.printMyName("Deyan");
  //
  //
  //
  //
  myC.printMyName("Hasnain");
  //
  //
  //
  //
  myC.printMyName("Shoib");

  //=======================<List(array)>========================
  var listNames = [10, 20, 30, 40];
  print("$listNames");

  //add element at last
  listNames.add(50); 
  print("$listNames");

  //insert elment at specific index
  listNames.insert(3, 100);
  print("$listNames");

  // insert all element
  var fourElement = [1, 2, 3, 4];
  var twoElement = [100, 200];
  twoElement.insertAll(1, fourElement);
  print("$twoElement");

  //editing elments in list
  twoElement[3] = 300;    //intial : 3
  print("$twoElement");

  // replace
  twoElement.replaceRange(0, 2, [-1, -2, -3]);
  print("$twoElement");

  //remove
  twoElement.remove(10);    //search and remove
  twoElement.removeLast();  //last
  twoElement.removeAt(1);   //index
  twoElement.removeRange(2, 4); //from -- to
  print("$twoElement");

  //Important print Terminologies
  print("Length : " "${twoElement.length}");
  print("Reversed : " "${twoElement.reversed}");
  print("First : " "${twoElement.first}");
  print("Last : " "${twoElement.last}");
  print("Is Empty : " "${twoElement.isEmpty}");
  print("Is Not Empty : " "${twoElement.isNotEmpty}");
  print("Element at 2 index : " "${twoElement.elementAt(2)}");
 
 

}
