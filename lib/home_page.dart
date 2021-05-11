import 'dart:ffi';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var num1 = 0, num2 = 0, sum = 0;

  final TextEditingController t1 = new TextEditingController(text: "0");
  final TextEditingController t2 = new TextEditingController(text: "0");

  void doAddition() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 + num2;
    });
  }

  void dosubstraction() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 - num2;
    });
  }

  void domultiplication() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 * num2;
    });
  }

  void dodivision() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 ~/ num2;
    });
  }

  void doclear() {
    setState(() {
      t1.text = "0";
      t2.text = "0";
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Calculator"),
      ),
      body: new Container(
          padding: const EdgeInsets.all(30.0),
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Text(
                "Output: $sum",
                style: new TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue),
              ),
              new TextField(
                keyboardType: TextInputType.number,
                decoration: new InputDecoration(hintText: "Enter Number 1"),
                controller: t1,
              ),
              new TextField(
                keyboardType: TextInputType.number,
                decoration: new InputDecoration(hintText: "Enter Number 2"),
                controller: t2,
              ),
              new Padding(padding: const EdgeInsets.only(top: 30.0)),
              new Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  new MaterialButton(
                    child: new Text("+"),
                    color: Colors.lightGreen,
                    onPressed: doAddition,
                  ),
                  new MaterialButton(
                    child: new Text("-"),
                    color: Colors.lime,
                    onPressed: dosubstraction,
                  ),
                ],
              ),
              new Padding(padding: const EdgeInsets.only(top: 10.0)),
              new Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  new MaterialButton(
                    child: new Text("x"),
                    color: Colors.greenAccent,
                    onPressed: domultiplication,
                  ),
                  new MaterialButton(
                    child: new Text("/"),
                    color: Colors.purple.shade200,
                    onPressed: dodivision,
                  ),
                ],
              ),
              new Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  new MaterialButton(
                    child: new Text("Clear"),
                    color: Colors.greenAccent.shade100,
                    onPressed: doclear,
                  ),
                ],
              )
            ],
          )),
    );
  }
}
