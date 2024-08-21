import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/home/Habit%20Tracker%20App/Modal/habitModal.dart';
import 'package:getx/home/Habit%20Tracker%20App/provider/habitProvider.dart';
import 'package:provider/provider.dart';

class Habittrackerpage extends StatelessWidget {
  const Habittrackerpage({super.key});

  @override
  Widget build(BuildContext context) {
    Habitprovider habitprovider = Provider.of(context, listen: false);
    Habitprovider habitproviderTrue = Provider.of(context, listen: true);
    return Scaffold(
      appBar: AppBar(
        title: Text('habit tracker app'),
      ),
      drawer: Text('hello'),
      body: ListView.builder(
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 65),
          child: Card(
              child: SizedBox(
            height: 60,
            width: 250,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.book),
                Text(
                  habitproviderTrue.listOfhabit[index],
                  style: TextStyle(fontSize: 22),
                ),
                SizedBox(
                  width: 80,
                ),
                Checkbox(value: habitproviderTrue.habitCheck, onChanged: (value) {
                  habitprovider.habites(value!);
                },),
              ],
            ),
          )),
        ),
        itemCount: habitprovider.listOfhabit.length,
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(onPressed: (){},child: Text('calender'),),
          FloatingActionButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: Column(
                      children: [
                        Text('Add habit'),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                            controller: txtHabit,
                            decoration: InputDecoration(
                                hintText: 'Enter habit',
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    borderSide:
                                        BorderSide(color: Colors.blue, width: 2)),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    borderSide: BorderSide(
                                        color: Colors.indigo, width: 2))),
                          ),
                        )
                      ],
                    ),
                    actions: [
                      TextButton(
                          onPressed: () {
                            habitprovider.addHabit(txtHabit.text);
                            txtHabit.clear();
                            Get.back();
                          },
                          child: Text('done')),
                    ],
                  );
                },
              );
            },
            child: Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}

TextEditingController txtHabit = TextEditingController();