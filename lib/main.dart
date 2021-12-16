import 'package:flutter/material.dart';
import 'package:implicit_animations/implicit_animations_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutterando Masterclass'),
      ),
      body: Column(
        children: [
          ListTile(
            title: Text('1 - Implicit Animations'),
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => ImplicitAnimationsPage())),
          ),
        ],
      ),
    );
  }
}
