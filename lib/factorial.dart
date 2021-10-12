import 'package:flutter/material.dart';
import 'package:ex_3/calculator.dart';

class Factorial extends StatelessWidget {
  final Function update;
  final myController = TextEditingController();
  Factorial(this.update, {Key? key}) : super(key: key);

  void calculateFactorial(int n) {
    int res = factorial(n);
    update(res);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
         TextField(
          textAlign: TextAlign.center,
          controller: myController,
        ),
        TextButton (
          onPressed: () {
            calculateFactorial(int.parse(myController.text));
          },
          child: const Text("FACTORIAL", style: TextStyle(color: Colors.white),),
          style: TextButton.styleFrom(backgroundColor: Colors.blueGrey),
        ),
      ],
    );
  }
}
