import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/home/CRUD%20OPERATION%20FOR%20EMPLOYEE/Controller/employee_controller.dart';

import '../Model/employee_model.dart';

class EmployeeData extends StatelessWidget {
  const EmployeeData({super.key});

  @override
  Widget build(BuildContext context) {
    EmployeeController employeeController = Get.put(EmployeeController());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        title: Text(
          'Employee Data',
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25),
        ),
      ),
      body: Obx(() => ListView.builder(
            itemCount: employeeController.employeeList.length,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                tileColor: Colors.blue,
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                              title: Text('Edit Employee Data'),
                              content: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Container(
                                    height: 60,
                                    width: 280,
                                    margin: EdgeInsets.symmetric(vertical: 8),
                                    child: TextField(
                                      controller: txtName,
                                      decoration: InputDecoration(
                                          hintText: 'Enter name',
                                          enabledBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                              borderSide: BorderSide(
                                                  color: Colors.blue,
                                                  width: 2)),
                                          focusedBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                              borderSide: BorderSide(
                                                  color: Colors.blue,
                                                  width: 3))),
                                    ),
                                  ),
                                  Container(
                                    height: 60,
                                    width: 280,
                                    margin: EdgeInsets.symmetric(vertical: 8),
                                    child: TextField(
                                      controller: txtId,
                                      decoration: InputDecoration(
                                          hintText: 'Enter id',
                                          enabledBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                              borderSide: BorderSide(
                                                  color: Colors.blue,
                                                  width: 2)),
                                          focusedBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                              borderSide: BorderSide(
                                                  color: Colors.blue,
                                                  width: 3))),
                                    ),
                                  ),
                                  Container(
                                    height: 60,
                                    width: 280,
                                    margin: EdgeInsets.symmetric(vertical: 8),
                                    child: TextField(
                                      controller: txtCompany,
                                      decoration: InputDecoration(
                                          hintText: 'Enter comapny name',
                                          enabledBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                              borderSide: BorderSide(
                                                  color: Colors.blue,
                                                  width: 2)),
                                          focusedBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                              borderSide: BorderSide(
                                                  color: Colors.blue,
                                                  width: 3))),
                                    ),
                                  ),
                                ],
                              ),
                              actions: [
                                TextButton(
                                    onPressed: () {
                                      employeeController.editData(index, {
                                        'name': txtName.text,
                                        'company': txtCompany.text,
                                        'id': txtId.text
                                      });
                                      txtId.clear();
                                      txtCompany.clear();
                                      txtName.clear();
                                      Navigator.of(context).pop(context);
                                    },
                                    child: Text('Done')),
                                TextButton(
                                    onPressed: () {
                                      txtId.clear();
                                      txtCompany.clear();
                                      txtName.clear();
                                      Navigator.of(context).pop(context);
                                    },
                                    child: Text('Cancle')),
                              ],
                            ),
                          );
                        },
                        icon: Icon(
                          Icons.edit,
                          color: Colors.white,
                        )),
                    IconButton(
                        onPressed: () {
                          employeeController.removeData(index);
                        },
                        icon: Icon(
                          Icons.delete,
                          color: Colors.white,
                        )),
                  ],
                ),
                leading: Text(
                  '${employeeController.employeeList[index].id}',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.normal,
                      fontSize: 18),
                ),
                title: Text(
                  '${employeeController.employeeList[index].name}',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 18),
                ),
                subtitle: Text(
                  '${employeeController.employeeList[index].company}',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            ),
          )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) => AlertDialog(
              title: Text('Enter Employee Data'),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    height: 60,
                    width: 280,
                    margin: EdgeInsets.symmetric(vertical: 8),
                    child: TextField(
                      controller: txtName,
                      decoration: InputDecoration(
                          hintText: 'Enter name',
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide:
                                  BorderSide(color: Colors.blue, width: 2)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide:
                                  BorderSide(color: Colors.blue, width: 3))),
                    ),
                  ),
                  Container(
                    height: 60,
                    width: 280,
                    margin: EdgeInsets.symmetric(vertical: 8),
                    child: TextField(
                      controller: txtId,
                      decoration: InputDecoration(
                          hintText: 'Enter id',
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide:
                                  BorderSide(color: Colors.blue, width: 2)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide:
                                  BorderSide(color: Colors.blue, width: 3))),
                    ),
                  ),
                  Container(
                    height: 60,
                    width: 280,
                    margin: EdgeInsets.symmetric(vertical: 8),
                    child: TextField(
                      controller: txtCompany,
                      decoration: InputDecoration(
                          hintText: 'Enter comapny name',
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide:
                                  BorderSide(color: Colors.blue, width: 2)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide:
                                  BorderSide(color: Colors.blue, width: 3))),
                    ),
                  ),
                ],
              ),
              actions: [
                TextButton(
                    onPressed: () {
                      employeeController.addData({
                        'name': txtName.text,
                        'company': txtCompany.text,
                        'id': txtId.text
                      });
                      txtId.clear();
                      txtCompany.clear();
                      txtName.clear();
                      Navigator.of(context).pop(context);
                    },
                    child: Text('Save')),
                TextButton(
                    onPressed: () {
                      txtId.clear();
                      txtCompany.clear();
                      txtName.clear();
                      Navigator.of(context).pop(context);
                    },
                    child: Text('Cancle')),
              ],
            ),
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

TextEditingController txtName = TextEditingController();
TextEditingController txtCompany = TextEditingController();
TextEditingController txtId = TextEditingController();
