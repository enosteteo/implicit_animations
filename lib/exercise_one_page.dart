import 'package:flutter/material.dart';

class ExerciseOnePage extends StatefulWidget {
  const ExerciseOnePage({Key? key}) : super(key: key);

  @override
  _ExerciseOnePageState createState() => _ExerciseOnePageState();
}

class _ExerciseOnePageState extends State<ExerciseOnePage> {
  Duration duration = Duration(seconds: 1);
  bool isSquare = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('2 - Exercício 1'),
      ),
      body: AnimatedAlign(
        alignment: isSquare ? Alignment.topCenter : Alignment.bottomRight,
        duration: duration,
        child: GestureDetector(
          onTap: () => {
            setState(
              () {
                isSquare = !isSquare;
              },
            )
          },
          child: AnimatedContainer(
            duration: duration,
            width: isSquare ? 100 : 20,
            height: isSquare ? 50 : 20,
            decoration: isSquare
                ? null
                : BoxDecoration(
                    borderRadius: BorderRadius.circular(9 * 9 * 9 * 9),
                    color: Colors.black,
                  ),
            color: isSquare ? Colors.blue : null,
            margin: EdgeInsets.all(15),
          ),
        ),
      ),
    );
  }
}
