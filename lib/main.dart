import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var qIndex = 0;

  void happyFunc() {
    setState(() {
      qIndex = 1;
    });
  }

  void sadFunc() {
    setState(() {
      qIndex = 2;
    });
  }

  void resetFunc() {
    setState(() {
      qIndex = 0;
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
        body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(qsn[qIndex]),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Are you Sergo?'),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RaisedButton(
                child: Text('Yes'),
                onPressed: happyFunc,
              ),
              RaisedButton(
                child: Text('No'),
                onPressed: sadFunc,
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              RaisedButton(
                child: Text('RESET'),
                onPressed: resetFunc,
              )
            ],
          ),
        ]),
      ),
    );
  }
}
