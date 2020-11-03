import 'question.dart';

class QuizBrainB {
  int _questionNumber = 0;

  List<Question> _questionBank2 = [
    Question('All sides of a scalene triangle have the same length', false),
    Question('9 x 8 = 72.', true),
    Question(' A googol is bigger than a billion', true),
    Question('Pi can be correctly written as a fraction', false),
    Question('29 + 38 = 57.', false),
    Question('-4 is a natural number.', false),
    Question('A convex shape curves outwards.', true),
    Question('53 - 18 = 25.', false),
    Question(' -2 is an integer.', true),
    Question('121 ÷ 11 = 11 ', true),
  ];

  // ignore: missing_return
  void nextQuestion() {
    if (_questionNumber < _questionBank2.length - 1) {
      _questionNumber += 1;
    }
  }

  String getQuestionText() {
    return _questionBank2[_questionNumber].questionText;
  }

  bool getCorrectAnswer() {
    return _questionBank2[_questionNumber].questionAnswer;
  }

  bool isFinished() {
    if (_questionNumber >= _questionBank2.length - 1) {
      print('Now returning true');
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _questionNumber = 0;
  }
}
