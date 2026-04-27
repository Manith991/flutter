class BankAccount {
  String name = "Dara";
  double _amount = 10000;

  double getAmount()
  {
    return _amount;
  }
  void setAmount(double amount)
  {
    //validate
    _amount = amount;
  }
}