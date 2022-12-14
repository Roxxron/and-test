import 'package:flutter/material.dart';

class SecondWidget extends StatefulWidget {
  const SecondWidget({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => SecondState();
}

class SecondState extends State<SecondWidget> {

  int _counter = 0;

  void increment() {
    setState(() {
      _counter++;
      if(_counter >= 4) {
        Navigator.pop(context, _counter);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("$_counter")
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {increment();},
      ),
    );
  }

}