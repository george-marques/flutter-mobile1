import 'package:flutter/material.dart';
import 'package:primeiro_app/AppController.dart';
import 'package:primeiro_app/HomePage.dart';

class AppWidget extends StatelessWidget{
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
   return AnimatedBuilder(animation: AppController.instance, builder: (context, child) {
     return MaterialApp(theme: ThemeData(brightness: AppController.instance.isDarkTheme ? Brightness.dark : Brightness.light),
         home: const HomePage());
   })
   ;
  }

}