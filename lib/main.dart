import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:tryagain/module/home/home_screen.dart';
import 'package:tryagain/module/login/login_screen.dart';
import 'package:tryagain/module/users/users_screen.dart';
import 'package:tryagain/shared/bloc_observer/bloc_obverver.dart';
import 'module/bmi/bmi_calculater.dart';
import 'module/counter/counter_screen.dart';
import 'module/messngar/messngar_page.dart';
import 'package:tryagain/shared/component/components.dart';

void main() {
  Bloc.observer = MyBlocObserver();
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  return MaterialApp(
    debugShowCheckedModeBanner: false,
    home:CounterScreen() ,
  );
  }

}
