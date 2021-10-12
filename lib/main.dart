
// ----------
// CALCULATOR
// ----------

import 'package:flutter/material.dart';
// import 'package:ex_3/factorial.dart';
import 'package:ex_3/factorial2.dart';
import 'package:ex_3/power.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("Calculator"),),
        body: const Calc(),
      ),
    );
  }
}

class Calc extends StatefulWidget {
  const Calc({Key? key}) : super(key: key);

  @override
  _CalcState createState() => _CalcState();
}

class _CalcState extends State<Calc> {
  int _result = 0;

  void _updateResult(result) {
    setState(() {
      _result = result;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            color: Colors.red,
            child: Center(
              child: Text("$_result", style: const TextStyle(color: Colors.white, fontSize: 40, fontWeight: FontWeight.w500),),
            ),
          ),
          FactorialFul(_updateResult),
          Power(_updateResult),
        ],
      ),
    );
  }
}
