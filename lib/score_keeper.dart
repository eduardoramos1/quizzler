import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ScoreKeeper {
  List<Icon> _score = [];

  void addAnswer(bool answer) {
    if (answer) {
      _score.add(Icon(
        Icons.check,
        color: Colors.green,
      ));
    } else {
      _score.add(Icon(
        Icons.close,
        color: Colors.red,
      ));
    }
  }

  List<Icon> getScore() {
    return _score;
  }

  void resetScore() {
    _score = [];
  }
}
