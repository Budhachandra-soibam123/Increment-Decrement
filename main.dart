import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

int a = 0;
void main(List<String> args) {
  runApp(MyApp());
}

int inc() {
  a++;
  return a;
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _counter = 0;
  void _increment() {
    setState(() {
      _counter++;
    });
  }

  void _decrement() {
    setState(() {
      _counter--;
    });
  }

  void stop1() {
    if (_counter != 0) {
      _decrement();
    } else {
      _counter = 0;
    }
  }

  void stop2() {
    if (_counter != 10) {
      _increment();
    } else {
      _counter = 10;
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My First Page"),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _counter < 0
                  ? Text("Value cannot negative")
                  : Text("Click on any Button"),
              Text(" $_counter"),
              ElevatedButton(
                onPressed: () {
                  stop2();
                },
                child: Text(
                  "Increment",
                ),
              ),
              SizedBox(
                height: 25,
                width: 100,
              ),
              ElevatedButton(
                onPressed: () {
                  stop1();
                },
                child: Text(
                  "Decrement",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
