import 'Question.dart';

class QuizBank {
  //counter for question number
  int _QuestionNumber = 0;
//list for questions
  final List<Question> _questionBank = [
    Question('questionn 1', false),
    Question('questionn 2', true),
    Question('question  3', true),
    Question('question  4', true),
    Question('question  5', false),
    Question('question  6', false),
    Question('question  7', true),
    Question('question  8', true),
    Question('question  9', true),
    Question('question  10', false),
  ];

  //Next Question
  void NextQuestion() {
    if (_QuestionNumber < _questionBank.length - 1) {
      _QuestionNumber++;
    }
  }

  // Get Q
  String GetQuestion() {
    return _questionBank[_QuestionNumber].question;
  }

  // Answer is correct?
  bool CorrectAnswer() {
    return _questionBank[_QuestionNumber].answer;
  }

  // Last Question?
  bool IsFinished() {
    if (_QuestionNumber >= _questionBank.length - 1) {
      return true;
    } else {
      return false;
    }
  }

  //Reset counter to zero
  void Reset() {
    _QuestionNumber = 0;
  }
}
