import 'package:flutter/material.dart';
import 'package:suit/suit.dart';

void main() => runApp(MaterialApp(home: App()));

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    /// [Adapter.initialize] You can write it to initialize `the global viewport adapter` here
    Adapter.initialize(context);

    return Scaffold(
      appBar: AppBar(),
      body: Container(child: MyTest(), width: 60.vw, height: 75.8.vh),
    );
  }
}

class MyTest extends RAdapterLessWidget {
  MyTest() : super(width: 100, height: 60);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          color: Colors.black,
          width: rw(50),
          height: rh(100),
        ),
        Container(
          color: Colors.red,
          width: rw(50),
          height: rh(50),
        )
      ],
    );
  }
}
