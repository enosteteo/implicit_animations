import 'package:flutter/material.dart';
import 'package:implicit_animations/exercise_one_page.dart';
import 'package:implicit_animations/exercise_two_page.dart';
import 'package:implicit_animations/gesture_page.dart';
import 'package:implicit_animations/implicit_animations_page.dart';
import 'package:implicit_animations/timer_page.dart';

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutterando Masterclass'),
      ),
      body: Column(
        children: [
          GoToListTileWidget(
            goTo: ImplicitAnimationsPage(),
            title: '1 - Implicit Animations',
          ),
          GoToListTileWidget(
            goTo: TimerPage(),
            title: '2 - Timer Implicit Animations',
          ),
          GoToListTileWidget(
            goTo: GesturePage(),
            title: '3 - Gesture Animations',
          ),
          GoToListTileWidget(
            goTo: ExerciseOnePage(),
            title: '4 - Exercício 1',
          ),
          GoToListTileWidget(
            goTo: ExerciseTwoPage(),
            title: '5 - Exercício 2',
          )
        ],
      ),
    );
  }
}

class GoToListTileWidget extends StatelessWidget {
  Widget goTo;
  String title;

  GoToListTileWidget({Key? key, required this.goTo, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => goTo),
      ),
    );
  }
}
