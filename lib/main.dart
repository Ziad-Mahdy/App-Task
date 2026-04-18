import 'package:flutter/material.dart';
import 'package:flutter_application_2/Todo_cubit/todo_cubit.dart';
import 'package:flutter_application_2/screens/Todo_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'seb7a_cubit/seb7a_cubit.dart';
import 'screens/seb7a_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
     home: BlocProvider(
      create: (context) => TodoCubit(), 
      child:  TodoScreen(),
      ),
    );
  }
}