import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/home/CRUD%20OPERATION%20FOR%20EMPLOYEE/View/employee_data.dart';
import 'package:getx/home/Counter%20App/view/counterPage.dart';
import 'package:getx/home/Habit%20Tracker%20App/provider/habitProvider.dart';
import 'package:provider/provider.dart';

import 'home/Counter App/controller/counterController.dart';
import 'home/Habit Tracker App/view/habitTrackerPage.dart';

void main()
{
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    CounterController controller=Get.put(CounterController());
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => Habitprovider(),),
      ],
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        // darkTheme: ThemeData(
        //   colorScheme: ColorScheme.light(
        //     primary: Colors.white,
        //     secondary: Colors.deepPurpleAccent,
        //     onSecondary: Colors.purpleAccent,
        //   )
        // ),
        // theme: ThemeData(
        //     colorScheme: ColorScheme.dark(
        //       onSecondary: Colors.white,
        //       primary: Colors.black12,
        //       secondary: Colors.blue,
        //     )
        // ),
        // themeMode: (controller.isDark.value==true)?ThemeMode.light:ThemeMode.dark,
        getPages: [
          GetPage(name: '/counter', page: () => Counterpage(),) ,
          GetPage(name: '/habit', page: () => Habittrackerpage(),) ,
          GetPage(name: '/', page: () => EmployeeData(),) ,
        ],
      ),
    );
  }
}
