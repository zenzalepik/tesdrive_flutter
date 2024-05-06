import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() => runApp(const AlertDialogExampleApp());

class AlertDialogExampleApp extends StatelessWidget {
  const AlertDialogExampleApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(colorScheme: ColorScheme.fromSwatch().copyWith(secondary: const Color(0xff6750a4))),
      home: const SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _checkLastPage();
  }

  Future<void> _checkLastPage() async {
    final prefs = await SharedPreferences.getInstance();
    final lastPage = prefs.getString('lastPage');
    if (lastPage != null) {
      switch (lastPage) {
        case 'InputScreen':
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => const InputScreen()),
          );
          break;
        case 'ResultScreen':
          final savedText = prefs.getString('savedText') ?? '';
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => ResultScreen(inputText: savedText)),
          );
          break;
        default:
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => const HomeScreen()),
          );
      }
    } else {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const HomeScreen()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late String _savedText = '';

  @override
  void initState() {
    super.initState();
    _loadSavedText();
  }

  Future<void> _loadSavedText() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      _savedText = prefs.getString('savedText') ?? '';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(_savedText),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const InputScreen()),
                ).then((value) {
                  if (value != null) {
                    setState(() {
                      _savedText = value;
                    });
                  }
                });
              },
              child: const Text('Input Text'),
            ),
          ],
        ),
      ),
    );
  }
}

class InputScreen extends StatelessWidget {
  const InputScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController _textController = TextEditingController();

    return Scaffold(
      appBar: AppBar(title: const Text('Input')),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: _textController,
                decoration: const InputDecoration(labelText: 'Input Text'),
              ),
              ElevatedButton(
                onPressed: () {
                  final text = _textController.text;
                  if (text.isNotEmpty) {
                    _saveText(text);
                    _saveLastPage('InputScreen');
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => ResultScreen(inputText: text)),
                    );
                  }
                },
                child: const Text('Save'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _saveText(String text) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('savedText', text);
  }

  Future<void> _saveLastPage(String pageName) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('lastPage', pageName);
  }
}

class ResultScreen extends StatelessWidget {
  final String inputText;

  const ResultScreen({Key? key, required this.inputText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Result')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(inputText),
            ElevatedButton(
              onPressed: () {
                _saveLastPage('ResultScreen');
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const HomeScreen()),
                );
              },
              child: const Text('Back to Home'),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _saveLastPage(String pageName) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('lastPage', pageName);
  }
}
