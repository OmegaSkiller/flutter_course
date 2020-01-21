import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  void happyFunc() {
    print('Yes');
  }

  void sadFunc() {
    print('No');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter App bar title'),
        ),
        body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
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
        ]),
      ),
    );
  }
}
