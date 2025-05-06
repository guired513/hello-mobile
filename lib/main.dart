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
  const HelloScreen({super.key});

  @override
  HelloScreenState createState() => HelloScreenState();
}

class HelloScreenState extends State<HelloScreen> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++; // updates the UI
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hello Mobile!'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('You have tapped the button this many times:'),
            SizedBox(height: 12),
            Text(
              '$_counter',
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
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
