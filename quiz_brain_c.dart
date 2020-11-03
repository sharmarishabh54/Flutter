import 'question.dart';

class QuizBrainC {
  int _questionNumber = 0;

  List<Question> _questionBank3 = [
    Question('Electrons are larger than molecules.', false),
    Question('The Atlantic Ocean is the biggest ocean on Earth.', false),
    Question('The chemical make up food often changes when you cook it.', true),
    Question('Sharks are mammals.', false),
    Question('The human body has four lungs.', false),
    Question('Atoms are most stable when their outer shells are full.', true),
    Question(
        'Filtration separates mixtures based upon their particle size.', true),
    Question('Venus is the closest planet to the Sun.', false),
    Question('Conductors have low resistance.', true),
    Question(
        'Molecules can have atoms from more than one chemical element.', true),
    Question('Water is an example of a chemical element.', false),
    Question('The study of plants is known as botany.', true),
    Question('Mount Kilimanjaro is the tallest mountain in the world.', false),
    Question('Floatation separates mixtures based on density.', true),
    Question('Herbivores eat meat.', false),
    Question(' Atomic bombs work by atomic fission.', true),
    Question('Molecules are chemically bonded.', true),
    Question('Spiders have six legs.', false),
    Question('Kelvin is a measure of temperature.', true),
    Question('The human skeleton is made up of less than 100 bones.', false),
  ];

  // ignore: missing_return
  void nextQuestion() {
    if (_questionNumber < _questionBank3.length - 1) {
      _questionNumber += 1;
    }
  }

  String getQuestionText() {
    return _questionBank3[_questionNumber].questionText;
  }

  bool getCorrectAnswer() {
    return _questionBank3[_questionNumber].questionAnswer;
  }

  bool isFinished() {
    if (_questionNumber >= _questionBank3.length - 1) {
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
