import 'package:flutter/material.dart';

class ImplicitAnimationsPage extends StatefulWidget {
  const ImplicitAnimationsPage({Key? key}) : super(key: key);

  @override
  _ImplicitAnimationsPageState createState() => _ImplicitAnimationsPageState();
}

class _ImplicitAnimationsPageState extends State<ImplicitAnimationsPage> {
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
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Implicit Animations'),
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
