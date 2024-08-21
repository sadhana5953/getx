import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:getx/home/CRUD%20OPERATION%20FOR%20EMPLOYEE/Model/employee_model.dart';

class EmployeeController
{
  RxList <EmployeeModel>employeeList=<EmployeeModel>[].obs;


  void addData(Map m1)
  {
    employeeList.add(EmployeeModel.fromJson(m1));
  }

  void editData(int index,Map m1)
  {
    employeeList [index]= EmployeeModel.fromJson(m1);
  }

  void removeData(int index)
  {
    employeeList.removeAt(index);
  }
}