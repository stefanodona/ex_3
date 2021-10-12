import 'package:flutter/material.dart';
import 'package:ex_3/calculator.dart';

class FactorialFul extends StatefulWidget {
  final Function update;
  const FactorialFul(this.update, {Key? key}) : super(key: key);

  @override
  _FactorialFulState createState() => _FactorialFulState();
}

class _FactorialFulState extends State<FactorialFul> {
  final factController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget> [
        SizedBox(
          width: MediaQuery.of(context).size.width,
          child: TextField(
            textAlign: TextAlign.center,
            style: textStyle,
            controller: factController,
          ),
        ),
        TextButton(
          style: buttonStyle,
          onPressed: () => widget.update(factorial(int.parse(factController.text))),
          child: const Text("FACTORIAL"),
        )
      ],
    );
  }


}

var textStyle = const TextStyle(color: Colors.blueGrey, fontSize: 25, fontWeight: FontWeight.w500);
var buttonStyle = TextButton.styleFrom(primary: Colors.white, backgroundColor: Colors.blueGrey);