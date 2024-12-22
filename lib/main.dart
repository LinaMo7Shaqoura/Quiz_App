import 'package:assignmwnt_two/Modules/true_false_question.dart';
import 'package:assignmwnt_two/question_screen.dart';
import 'package:assignmwnt_two/quiz/home.dart';
import 'package:flutter/material.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData.light(),

        debugShowCheckedModeBanner: false,
        home: Home());
  }
}
