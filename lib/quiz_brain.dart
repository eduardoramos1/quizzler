import 'question.dart';

class QuizBrain {
  int _questionNumber = 0;

  List<Question> _questions = [
    Question('Uma vaca pode descer mas não consegue subir escadas', false),
    Question('Um quarto dos ossos humanos estão nos pés', true),
    Question('Sangue de lesma é verde', true),
    Question('2 + 2 = 4', true),
    Question('Elefante', false)
  ];

  void nextQuestion() {
    if (_questionNumber < _questions.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestionsText() {
    return _questions[_questionNumber].questionText;
  }

  bool getQuestionAnswer() {
    return _questions[_questionNumber].questionAnswer;
  }

  bool isCorrect(bool answer) {
    bool correctAnswer = answer == getQuestionAnswer();
    if (correctAnswer) {
      print('ACEERTO MIZERAVI');
    } else {
      print('ERROU');
    }

    nextQuestion();

    return correctAnswer;
  }

  List get questions {
    return _questions;
  }
}
