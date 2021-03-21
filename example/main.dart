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
      body: Container(child: RelativeWidget(), width: 60.vw, height: 75.8.vh),
    );
  }
}

class RelativeWidget extends StatelessWidget {
  const RelativeWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    /// Example: [double.rw]. Using `the percentage adapter based on Relative Position` here.
    return Text('hello', style: TextStyle(fontSize: 20.rw(context)));

    /// Or use the other way:
    /// ```
    /// var adapter = RAdapter(context);
    /// return Text('hello', style: TextStyle(fontSize: adapter.setRW(20)));
    /// ```
  }
}
