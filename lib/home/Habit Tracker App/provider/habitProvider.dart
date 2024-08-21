import 'package:flutter/cupertino.dart';

class Habitprovider extends ChangeNotifier
{
  List listOfhabit=[];
  bool habitCheck=false;

  void addHabit(String habit)
  {
    listOfhabit.add(habit);
    notifyListeners();
  }
  void habites(bool value)
  {
    habitCheck=value;
    notifyListeners();
  }
}