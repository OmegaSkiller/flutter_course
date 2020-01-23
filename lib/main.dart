import 'dart:ui';

import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _qIndex = 0;

  void _happyFunc() {
    setState(() {
      _qIndex = 1;
    });
  }

  void _sadFunc() {
    setState(() {
      _qIndex = 2;
    });
  }

  void _resetFunc() {
    setState(() {
      _qIndex = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    var qsn = [
      '',
      'Yey, you are Sergo kydesnika',
      'Take me back to Kydesnik!',
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('--- Kydesnik --- (App)'),
        ),
        body: Column(children: [
          Row(
            children: [
              Container(
//                width: double.infinity,
                child: Text(
                  'Are you Sergo?',
                  style: TextStyle(fontSize: 24),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
          Row(
            children: [
              RaisedButton(
                child: Text('Yes'),
                onPressed: _happyFunc,
              ),
              RaisedButton(
                child: Text('No'),
                onPressed: _sadFunc,
              )
            ],
          ),
          Row(
            children: [
              RaisedButton(
                child: Text('RESET'),
                onPressed: _resetFunc,
              )
            ],
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.all(10),
            child: Text(
              qsn[_qIndex],
              style: TextStyle(fontSize: 28),
              textAlign: TextAlign.center,
            ),
          ),
        ]),
      ),
    );
  }
}
