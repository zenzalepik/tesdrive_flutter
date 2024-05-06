import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(QuizApp());
}

class QuizApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Quiz',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: QuizScreen1(), // Mulai dengan layar pertama
    );
  }
}

class QuizScreen1 extends StatefulWidget {
  @override
  _QuizScreen1State createState() => _QuizScreen1State();
}

class _QuizScreen1State extends State<QuizScreen1> {
  int _score = 0;
  bool _answered = false;

  @override
  void initState() {
    super.initState();
    _loadScore();
  }

  void _loadScore() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _score = prefs.getInt('score') ?? 0;
    });
  }

  void _saveScore(int newScore) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt('score', newScore);
  }

  void _answerQuestion(bool isCorrect) {
    if (!_answered) {
      setState(() {
        if (isCorrect) {
          _score++;
        }
        _answered = true;
      });
      _saveScore(_score);
      // Pindah ke layar berikutnya setelah menjawab
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => QuizScreen2()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Quiz - Soal 1'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Pertanyaan Soal 1:',
              style: TextStyle(fontSize: 20.0),
            ),
            SizedBox(height: 10.0),
            Text(
              'Ini adalah pertanyaan soal 1?',
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20.0),
            !_answered
                ? Column(
                    children: <Widget>[
                      ElevatedButton(
                        onPressed: () => _answerQuestion(true),
                        child: Text('Benar'),
                      ),
                      ElevatedButton(
                        onPressed: () => _answerQuestion(false),
                        child: Text('Salah'),
                      ),
                    ],
                  )
                : Column(
                    children: <Widget>[
                      Text(
                        'Anda telah menjawab soal ini.',
                        style: TextStyle(fontSize: 16.0),
                      ),
                    ],
                  ),
            SizedBox(height: 20.0),
            Text(
              'Skor: $_score',
              style: TextStyle(fontSize: 24.0),
            ),
          ],
        ),
      ),
    );
  }
}

class QuizScreen2 extends StatefulWidget {
  @override
  _QuizScreen2State createState() => _QuizScreen2State();
}

class _QuizScreen2State extends State<QuizScreen2> {
  int _score = 0;
  bool _answered = false;

  @override
  void initState() {
    super.initState();
    _loadScore();
  }

  void _loadScore() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _score = prefs.getInt('score') ?? 0;
    });
  }

  void _saveScore(int newScore) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt('score', newScore);
  }

  void _answerQuestion(bool isCorrect) {
    if (!_answered) {
      setState(() {
        if (isCorrect) {
          _score++;
        }
        _answered = true;
      });
      _saveScore(_score);
      // Pindah ke layar berikutnya setelah menjawab
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => QuizScreen3()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Quiz - Soal 2'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Pertanyaan Soal 2:',
              style: TextStyle(fontSize: 20.0),
            ),
            SizedBox(height: 10.0),
            Text(
              'Ini adalah pertanyaan soal 2?',
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20.0),
            !_answered
                ? Column(
                    children: <Widget>[
                      ElevatedButton(
                        onPressed: () => _answerQuestion(true),
                        child: Text('Benar'),
                      ),
                      ElevatedButton(
                        onPressed: () => _answerQuestion(false),
                        child: Text('Salah'),
                      ),
                    ],
                  )
                : Column(
                    children: <Widget>[
                      Text(
                        'Anda telah menjawab soal ini.',
                        style: TextStyle(fontSize: 16.0),
                      ),
                    ],
                  ),
            SizedBox(height: 20.0),
            Text(
              'Skor: $_score',
              style: TextStyle(fontSize: 24.0),
            ),
          ],
        ),
      ),
    );
  }
}

class QuizScreen3 extends StatefulWidget {
  @override
  _QuizScreen3State createState() => _QuizScreen3State();
}

class _QuizScreen3State extends State<QuizScreen3> {
  int _score = 0;
  bool _answered = false;

  @override
  void initState() {
    super.initState();
    _loadScore();
  }

  void _loadScore() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _score = prefs.getInt('score') ?? 0;
    });
  }

  void _saveScore(int newScore) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt('score', newScore);
  }

  void _answerQuestion(bool isCorrect) {
    if (!_answered) {
      setState(() {
        if (isCorrect) {
          _score++;
        }
        _answered = true;
      });
      _saveScore(_score);
      // Pindah ke layar berikutnya setelah menjawab
      // Karena ini layar terakhir, kita kembali ke layar pertama setelah menjawab soal
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => QuizScreen1()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Quiz - Soal 3'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Pertanyaan Soal 3:',
              style: TextStyle(fontSize: 20.0),
            ),
            SizedBox(height: 10.0),
            Text(
              'Ini adalah pertanyaan soal 3?',
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20.0),
            !_answered
                ? Column(
                    children: <Widget>[
                      ElevatedButton(
                        onPressed: () => _answerQuestion(true),
                        child: Text('Benar'),
                      ),
                      ElevatedButton(
                        onPressed: () => _answerQuestion(false),
                        child: Text('Salah'),
                      ),
                    ],
                  )
                : Column(
                    children: <Widget>[
                      Text(
                        'Anda telah menjawab soal ini.',
                        style: TextStyle(fontSize: 16.0),
                      ),
                    ],
                  ),
            SizedBox(height: 20.0),
            Text(
              'Skor: $_score',
              style: TextStyle(fontSize: 24.0),
            ),
          ],
        ),
      ),
    );
  }
}
