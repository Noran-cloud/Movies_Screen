import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:rwad/User_Screen.dart';
import 'package:rwad/counter_page.dart';
import 'package:rwad/cubit/users_cubit.dart';
//import 'package:rwad/drag_drop_example.dart';
import 'package:rwad/login_page.dart';
import 'package:rwad/movieScreen.dart';
import 'package:rwad/provider/CounterProvider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Moviescreen(),
      
    );
  }
}
