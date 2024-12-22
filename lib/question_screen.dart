import 'package:assignmwnt_two/Modules/question_brain.dart';
import 'package:assignmwnt_two/quiz/home.dart';
import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  void checkAnswer(bool userChoice) {
    if (questionbrain.isFinished()) {
      print("finished");
      Alert(
        context: context,
        type: AlertType.success,
        title: "Quiz Finished",
        style: AlertStyle(
            backgroundColor: Colors.grey[100],
            titleStyle:
                TextStyle(color: Colors.blueGrey, fontWeight: FontWeight.bold),
            descStyle: TextStyle(
                color: Colors.blue[900],
                fontSize: 25,
                fontWeight: FontWeight.w500)),
        desc: "Great!! you finished all  ",
        buttons: [
          DialogButton(
            child: Text(
              "Restart",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            onPressed: () => Navigator.push(
                context, MaterialPageRoute(builder: (context) => Home())),
            color: Color.fromRGBO(0, 179, 134, 1.0),
          ),
          DialogButton(
            child: Text(
              "Close",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            onPressed: () => Navigator.pop(context),
            gradient: LinearGradient(colors: [
              Color.fromRGBO(116, 116, 191, 1.0),
              Color.fromRGBO(52, 138, 199, 1.0)
            ]),
          )
        ],
      ).show();

      setState(() {
        questionbrain.reset();
        scoreKeeper.clear();
      });
    } else {
      correctAnswer = questionbrain.getAnswer();
      setState(
        () {
          if (correctAnswer == userChoice) {
            isCorresct = true;
            scoreKeeper.add(
              Icon(
                Icons.check,
                color: Colors.green,
              ),
            );
          } else {
            scoreKeeper.add(
              Icon(
                Icons.close,
                color: Colors.red,
              ),
            );
          }
          questionbrain.nextQuestion();
        },
      );
    }
  }

  Questionbrain questionbrain = Questionbrain();
  int _questionNumber = 0;
  bool? isCorresct;
  bool? userChoice;
  bool? correctAnswer;
  List<Icon> scoreKeeper = [];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blue[100],
        appBar: AppBar(
          title: Container(
            padding: EdgeInsetsDirectional.symmetric(vertical: 100),
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: double.infinity,
                  padding: EdgeInsetsDirectional.symmetric(
                      horizontal: 30, vertical: 30),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Color(0xff69F0AEFF), Colors.blueAccent],
                    ),
                  ),
                  child: Text(
                    "Welcome To Flutter Challenge !".toUpperCase(),
                    overflow: TextOverflow.visible,
                    textAlign: TextAlign.center,
                    softWrap: true,
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.blueGrey[800],
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          backgroundColor: Colors.blue[200],
          elevation: 0.0,
        ),
        body: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            children: [
              Expanded(
                flex: 3,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.quiz,
                      size: 70,
                      color: Colors.blue[800],
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    // Icon(
                    //   Icons.flutter_dash,
                    //   size: 50,
                    //   color: Colors.lightGreen[900],
                    // ),
                    CircleAvatar(
                      radius: 80,
                      backgroundImage: NetworkImage(
                        "https://th.bing.com/th/id/OIP.KABhol5JHNKrSm_9iJvGbAHaHa?w=183&h=183&c=7&r=0&o=5&dpr=1.1&pid=1.7",
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                flex: 2,
                child: Center(
                  child: Text(
                    questionbrain.getQuestion(),
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.blueGrey[900]),
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    correctAnswer = questionbrain.getAnswer();
                    checkAnswer(true);
                  },
                  style: ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Colors.white60),
                  ),
                  child: Text(
                    "True",
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    correctAnswer = questionbrain.getAnswer();
                    checkAnswer(false);
                  },
                  style: ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Colors.white60),
                  ),
                  child: Text(
                    "False",
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                // mainAxisAlignment: MainAxisAlignment.start,
                children: scoreKeeper,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
