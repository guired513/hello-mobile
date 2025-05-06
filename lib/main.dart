import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hello Mobile!',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HelloScreen(),
    );
  }
}

class HelloScreen extends StatefulWidget {
  @override
  HelloScreenState createState() => HelloScreenState();
}

class HelloScreenState extends State<HelloScreen> {
  int _counter = 0;
  String _name = '';

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _updateName(String value) {
    setState(() {
      _name = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hello Mobile!'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text('Enter your name:', style: TextStyle(fontSize: 16)),
            SizedBox(height: 8),
            TextField(
              onChanged: _updateName,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Your name here',
              ),
            ),
            SizedBox(height: 20),
            if (_name.isNotEmpty)
              Text(
                'Hello, $_name!',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            SizedBox(height: 40),
            Text(
              'You have tapped the button this many times:',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 8),
            Text(
              '$_counter',
              style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Tap me!',
        child: Icon(Icons.add),
      ),
    );
  }
}