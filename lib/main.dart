import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int days = 30;
    String name = "Faizan";
    //double pi = 3.14;
    bool isMale = true;
    num temp = 30.5;

    var day = 434; //Auto define dataType
    const pi = 3.14; //Value of const cant be change & also Auto define dataType

    return Material(
      child: Container(
        color: Colors.white,
        child: Center(
          child: Text('Welcome to $days days of flutter by $name'),
        ),
      ),
    );
  }
}
