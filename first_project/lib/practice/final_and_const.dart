/* final and const are used in Dart to define constants, but they have different use cases and implications.

  Final:
  - A variable declared with final can only be set once and is initialized at runtime.
  - Example:
            final int age = 30; // age can be set once and cannot be changed later        
            age = 400; // This will cause an error because age is final and cannot be reassigned.
  
  Const:
  - A variable declared with const is a compile-time constant and must be initialized with a constant value.
  - Example:  
            const int maxUsers = 100; // maxUsers is a compile-time constant and cannot be changed later
            maxUsers = 200; // This will cause an error because maxUsers is const and cannot be reassigned.
*/      

void main() {
  final age = 19;
  // age = 20;   gives error of set only once.
 
  final int age2;
  age2 = 29;

  // final var age3;  //gives error because in var we change dynamic values.
  // age3 = 40;

  final dynamic age4;
  age4 = 89;

  // =================<const>======================
  const name = "Deyan";
  // name = "Hasnain"; //can't be change



  // =================<const & final with list>======================
  

  final names = [
    "Deyan",
    "Hasnain",
    "Shoib"
  ];
 
  const names1 = [
    "Deyan",
    "Hasnain",
    "Shoib"
  ];
  print(names);
  print(names1); 

  //names = ["Bilal", "Abdullah"]; // gives error because names is final and can't be reassigned.
  names.add("Dalil"); // but we can add new element in final list.
  // names1.add( "Yaseen"); // gives error because names1 is const and can't be changed.
  
   print(names); 
  print(names1);  //can't be changed

}
/*
  Final:
  *Value is set only once.
  *Initialized at runtime.
  *Can’t be reassigned.
  *For lists: contents can be changed (add/remove items).
  
  Const:
  *Value is a compile-time constant.
  *Must be known at compile time.
  *Can’t be reassigned.
  *For lists: contents can’t be changed (completely immutable).
*/