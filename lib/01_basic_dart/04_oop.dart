import 'package:flutter/cupertino.dart';

void main() {
  Person person = Person(name: 'Sok', phone: '012345678');
  person.displayInfo();
  Teacher teacher = Teacher();
  teacher.address = "New York";
  debugPrint("Teacher Address: ${teacher.address}");
  debugPrint(teacher.name);
  debugPrint(teacher.name ?? "N/A");
}

class Person {
  //properties
  // String name = "Sok"; //must assign value for variable or it will error
  // String phone = "012345678"; //assign value in variable is useless even though it is not error
  String name;
  String phone;
  Person({required this.name, required this.phone});

  void displayInfo() {
    debugPrint("Name: $name, Phone: $phone");
  }
}

class Teacher {
  String? name; //? = assign null to variable so variable = null
  String? grade;
  late String address; // late must assign value to variable later
  // Teacher({required this.name,required this.grade});
}
