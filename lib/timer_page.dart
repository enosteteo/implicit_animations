import 'dart:async';

import 'package:flutter/material.dart';

class TimerPage extends StatefulWidget {
  const TimerPage({Key? key}) : super(key: key);

  @override
  _TimerPageState createState() => _TimerPageState();
}

class _TimerPageState extends State<TimerPage> {
  bool isExpaned = false;
  final duration = Duration(seconds: 1);
  late final Timer timer;

  void toggle() {
    setState(() {
      isExpaned = !isExpaned;
    });
  }

  @override
  void initState() {
    super.initState();
    timer = Timer.periodic(duration, (timer) => toggle());
    WidgetsBinding.instance?.addPostFrameCallback((timeStamp) {
      toggle();
    });
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Timer Implicit Animations'),
      ),
      body: AnimatedAlign(
        alignment: isExpaned ? Alignment.center : Alignment.bottomCenter,
        duration: duration,
        child: GestureDetector(
          onTap: () {
            setState(() {
              isExpaned = !isExpaned;
            });
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
