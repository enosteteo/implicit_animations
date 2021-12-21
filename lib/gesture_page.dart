import 'package:flutter/material.dart';

class GesturePage extends StatefulWidget {
  const GesturePage({Key? key}) : super(key: key);

  @override
  _GesturePageState createState() => _GesturePageState();
}

class _GesturePageState extends State<GesturePage> {
  bool isExpaned = false;
  final duration = Duration(seconds: 1);

  void toggle() {
    setState(() {
      isExpaned = !isExpaned;
    });
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gesture Implicit Animations'),
      ),
      body: AnimatedAlign(
        alignment: isExpaned ? Alignment.center : Alignment.bottomCenter,
        duration: duration,
        child: GestureDetector(
          onPanStart: (details) {
            setState(() {
              isExpaned = true;
            });
          },
          onPanEnd: (details) => {
            setState(() {
              isExpaned = false;
            })
          },
          child: AnimatedScale(
            duration: duration,
            scale: isExpaned ? 1 : 2,
            child: AnimatedContainer(
              duration: duration,
              alignment: Alignment.center,
              width: isExpaned ? 100 : 200,
              height: isExpaned ? 100 : 200,
              color: isExpaned ? Colors.red : Colors.blue,
              child: Text('Flutterando'),
            ),
          ),
        ),
      ),
    );
  }
}
