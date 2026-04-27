import 'package:flutter/cupertino.dart';

void main() {
  // for loop
  for (int i = 3; i < 10; i = i + 2) {
    debugPrint("$i");
  }

  var firstName = ["Nary", "Sok", "Dara", "Mary", "Roth"];
  for (var name in firstName) {
    debugPrint("Name: $name");
  }

  int id = 1;
  String name = "Chan";
  int age = 20;
  debugPrint("ID: $id, Name: $name, Age: $age");

  Map<String, dynamic> user = {
    "id": 1,
    "username": "admin",
    "password": "123st",
    "phone": "012345678",
  };
  user.forEach((key, value) {
    debugPrint("$key : $value");
  });

  var lstPlayers = ["Nith", "Sok", "Vanda", "Van", "Sok", "Nith"];
  debugPrint("Without Set:");
  for (var value in lstPlayers) {
    debugPrint(value);
  }

  // Set will remove duplicate data in list
  Set<String> players = {"Nith", "Sok", "Vanda", "Van"};
  debugPrint("With Set will auto remove duplicate data:");
  for (var value in players) {
    debugPrint(value);
  }
}
