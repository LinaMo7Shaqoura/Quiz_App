import 'package:assignmwnt_two/Modules/true_false_question.dart';

class Questionbrain {
  int _questionNumber = 0;
  final List<QuestionTruFalse> _banksQuestion = [
    QuestionTruFalse(
        questionAnswer: true, questionName: "Q1: Release mode allows us to optimize the codes and generate them without any debug data in a fully optimized form. "),

    QuestionTruFalse(
        questionAnswer: false, questionName: "Q2: Container Widget can added unlimited child"),
    QuestionTruFalse(
        questionAnswer: false, questionName: "Q3: await can be used with any function in Flutter, regardless of whether it is asynchronous or synchronous."),

    QuestionTruFalse(
        questionAnswer: true, questionName: "Q4: Stateless widgets is an immutable."),

    QuestionTruFalse(
        questionAnswer: true,
        questionName:
            'Q5: Dart used for a wide range of applications, including Android mobile applications, web applications and enterprise system.'),

    QuestionTruFalse(
        questionAnswer: true,
        questionName: 'Q6: The Container is the Flutter widget that enables us to compose, personalize, position, and decorate its child widget. '),

    QuestionTruFalse(
        questionAnswer: true,
        questionName: 'Q7: Flutter allows developers to access platform-specific APIs and features.'),
    QuestionTruFalse(
        questionAnswer: false,
        questionName: 'Q8: When click insides the text box, the label goes into the top left corner of the border and the hint text shown up txt field.')
   , QuestionTruFalse(
        questionAnswer: false,
        questionName: 'Q9: Java It uses flux and redux architecture. Flux create by facebook, where as redux is the preferred choice among the community.  '),

    QuestionTruFalse(
        questionAnswer: true,
        questionName: 'Q10: To create a grid list is by using the GridView.count() constructor, which specifies the number of rows and columns in a grid.  '),

  ];

  String getQuestion() {
    return _banksQuestion[_questionNumber].questionName;
  }

  bool getAnswer() {
    return _banksQuestion[_questionNumber].questionAnswer;
  }

  bool isFinished() {
    if (_questionNumber == _banksQuestion.length - 1) {
      return true;
    } else {
      return false;
    }
  }

  void nextQuestion() {
    if (_questionNumber < _banksQuestion.length - 1) {
      _questionNumber++;
    }
  }

  void reset() {
    _questionNumber = 0;
  }
}
