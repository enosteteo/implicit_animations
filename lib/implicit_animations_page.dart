import 'package:flutter/material.dart';

class ImplicitAnimationsPage extends StatefulWidget {
  const ImplicitAnimationsPage({Key? key}) : super(key: key);

  @override
  _ImplicitAnimationsPageState createState() => _ImplicitAnimationsPageState();
}

class _ImplicitAnimationsPageState extends State<ImplicitAnimationsPage> {
  bool isExpaned = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Implicit Animations'),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              isExpaned = !isExpaned;
            });
          },
          child: Container(
            // duration: Duration(seconds: 1, milliseconds: 50),
            width: isExpaned ? 100 : 50,
            height: isExpaned ? 100 : 50,
            color: isExpaned ? Colors.red : Colors.blue,
          ),
        ),
      ),
    );
  }
}
