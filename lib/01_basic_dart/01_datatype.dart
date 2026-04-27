import 'package:flutter/cupertino.dart';

void main() {
  //rule to store values in program
  var myName = 'Nith'; //string
  int age = 20; //integer
  double height = 1.7; //double
  bool isSingle = true; //boolean
  num price = 23.4; //number

  var mySalary = 2000; //integer

  //var and dynamic
  var username = "admin"; //string
  username =
      "sok"; //if we declare var as string it will only catch string on overriding
  dynamic result = "success"; //but dynamic can clear datatype on its overriding
  result = 200;
  debugPrint(
    "$myName, $age, $height, $isSingle, $price, $mySalary, $username, $result",
  );

  var email = "root";
  var password = "root";

  if (email == "root" && password == "root") {
    debugPrint("Login Success");
  } else {
    debugPrint("Username or password invalid");
  }

  var user = User();
  user.showAmount();
}

//modifier in dart has only 2: public and private
class User //put nothing = modifier public
{
  final _amount = 10; // "_" is to put modifier as private
  void showAmount() {
    debugPrint('Amount: $_amount');
  }
}
