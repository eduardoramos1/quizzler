import 'package:flutter/cupertino.dart';
import 'question.dart';
import 'score_keeper.dart';

import 'package:rflutter_alert/rflutter_alert.dart';

ScoreKeeper scoreKeeper = ScoreKeeper();

class QuizBrain {
  int _questionNumber = 0;
  int _scoreNumber = 0;

  List<Question> _questions = [
    Question('Uma vaca pode descer mas não consegue subir escadas', false),
    Question('Um quarto dos ossos humanos estão nos pés', true),
    Question('Sangue de lesma é verde', true),
    Question('2 + 2 = 4', true),
    Question('Elefante', false),
    Question("Eai", true)
  ];

  bool isNotAtLastQuestion() {
    bool notLastQuestion = _scoreNumber != _questions.length;
    if (notLastQuestion) _scoreNumber++;

    return notLastQuestion;
  }

  bool isLastQuestion() {
    print(_scoreNumber);
    print(_questionNumber);
    return _scoreNumber > _questionNumber;
  }

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

    if (isNotAtLastQuestion()) {
      scoreKeeper.addAnswer(correctAnswer);
    }

    nextQuestion();

    return correctAnswer;
  }

  List<Icon> getScore() {
    return scoreKeeper.getScore();
  }

  void resetQuiz() {
    _scoreNumber = 0;
    _questionNumber = 0;
    scoreKeeper.resetScore();
  }
}
