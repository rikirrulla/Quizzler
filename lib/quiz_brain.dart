import 'question.dart';
class QuizBrain {
  int _questionNumber = 0;

  List<Question> _questions = [
    Question(
        q: 'Kafeja eshte pija me e popullarizuar joalkoolike ne Bote?',
        a: false),
    Question(q: 'Flamuri i Unionit Evropian ka 25 yje?', a: false),
    Question(q: 'Google eshte webfaqja me e vizituar ne Bote?', a: true),
    Question(
        q: 'Theodore Roosevelt ishte presidenti me i ri i Amerikes?', a: true),
    Question(q: 'NATO-ja eshte formuar me vitin 1949?', a: true),
    Question(
        q: 'Hitleri behet kancelar i Gjermanise me vitin 1932??', a: false),
    Question(
        q: 'Argjentina eshte vendi ku spanjollishtja për kokë banori flitet me shume se ne Spanje?',
        a: true),
    Question(q: 'Emona” eshte emri antik i qytetit te Zagrebit?', a: false),
    Question(
        q: 'India eshte me populluar se krejt Evropa dhe Amerika?', a: false),
    Question(q: 'Insulina prodhohet ne pankreas?', a: true),
    Question(q: 'Omi eshte njesia matese e rrezistences magnetike?', a: true),
    Question(
        q: 'Edson Arantes do Nascimento, eshte emri i vertete i futbollisit brazilian Rivaldo?',
        a: false),
    Question(
        q: 'FC Real Madrid eshte shpallur ekipi futbollstik i shekullit??',
        a: true),
    Question(
        q: 'Lojerat Olimpike Dimerore me 1984 u mbajten ne Sarajevë??',
        a: true),
    Question(q: 'CNN eshte TV-ja me e shiquar ne tere Boten?', a: true),
    Question(
        q: '\“Sheakspeare in Love\” fiton Oscarin me vitin 1997?', a: true),
  ];

  void nextQuestion() {
    if (_questionNumber < _questions.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestionText() {
    return _questions[_questionNumber].questionText;
  }

  bool getCorrectAnswer() {
    return _questions[_questionNumber].questionAnswer;
  }


  bool isFinished() {
    if (_questionNumber >= _questions.length - 1) {

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