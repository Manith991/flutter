import 'package:flutter/cupertino.dart';
import '06_encapsulation.dart';

void main() {
  Teacher teacher = Teacher("Dara", 25, 12345678, "New York", "Male", "Math");
  teacher.showInfo();

  BankAccount bankAccount = BankAccount();
  final amount = bankAccount.getAmount();
  debugPrint(amount as String?);
}

class Person {
  String name;
  int age;
  int phone;
  String address;
  String gender;

  Person(this.name, this.age, this.phone, this.address, this.gender);

  void showInfo() {
    debugPrint(
      "Name: $name, Age: $age, Phone: $phone, Address: $address, Gender: $gender ",
    );
  }
}

class Teacher extends Person {
  String? subject;
  Teacher(
    super.name,
    super.age,
    super.phone,
    super.address,
    super.gender,
    this.subject,
  );
}
