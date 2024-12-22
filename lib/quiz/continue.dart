import 'dart:collection';

import 'package:assignmwnt_two/question_screen.dart';
import 'package:flutter/material.dart';

class Continue extends StatefulWidget {
  const Continue({super.key});

  @override
  State<Continue> createState() => _ContinueState();
}

class _ContinueState extends State<Continue> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsetsDirectional.only(top: 50.0, start: 20.0),
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xff348ef2),
              Color(0xff4183f1),
              Color(0xff5177ee),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                padding: EdgeInsetsDirectional.all(8),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white60),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Icon(
                  Icons.close,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Image.asset(
                "lib/quiz/images/ballon-b.png",
                width: 350,
                height: 350,
              ),
              // child: Icon(
              //   Icons.flutter_dash_sharp,
              //   size: 250,
              //   color: Colors.grey[200],
              // ),
            ),
            SizedBox(
              height: 100,
            ),
            Text(
              "Level 2",
              style: TextStyle(
                  color: Color.fromARGB(224, 255, 255, 255),
                  fontSize: 24.0,
                  fontWeight: FontWeight.w500),
            ),
            Text(
              "Continuing",
              style: TextStyle(
                  color: Color.fromARGB(224, 255, 255, 255),
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 30.0,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: Text(
                "Do You feel Confident? Here you'll challenge of our most difficult travel questions",
                style: TextStyle(
                    color: Color.fromARGB(224, 255, 255, 255),
                    fontSize: 16.0,
                    fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(
              height: 60,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => QuestionScreen()));
              },
              child: Container(
                margin: EdgeInsetsDirectional.only(end: 20.0),
                child: Material(
                  elevation: 7.0,
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50)),
                    child: Center(
                      child: Text(
                        "Game",
                        style: TextStyle(
                            color: Color(0xff5177ee),
                            fontSize: 20.0,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
