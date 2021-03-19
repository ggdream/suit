# suit

<div align="center">
    <a href="https://space.bilibili.com/264346349">
        <img src="https://img.shields.io/badge/bilibili-魔咔啦咔-blueviolet" alt="😭" />
    </a>
    <a href="https://github.com/ggdream/suit">
        <img src="https://img.shields.io/badge/GitHub-魔咔啦咔-ff69b4" alt="😭" />
    </a>
</div>
<div align="center">
    <img src="https://img.shields.io/badge/Platforms-Windows,Linux,MacOS,Android,IOS,Web-009688" alt="😭" />
    <img src="https://img.shields.io/badge/Mode-all-3949ab" alt="😭" />
</div>

### A library of platform adaptation scheme based on the ViewPort (vw and vh).

<br/>
<br/>
<br/>

## 1. Initialize the adapter
~~~dart
import 'package:flutter/material.dart';
import 'package:suit/suit.dart';

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    Adapter.initialize(context);

    return Scaffold();
  }
}
~~~
 - Cannot initialize under root widget
 - An application only needs to be initialized once
 - You can write it in any lifecycle hook, but for desktop application adaptation, it's better to write it in the `build` method

<br/>

## 2. Import the package and write size by `vh, vw` anywhere
- Method 1: 36.vw, 52.0.vw, 100.vh
- Method 2: Adapter.setVW(25), Adapter.setVH(30)
- Method 3: Adapter.vw * 32, Adapter.vh * 75

<br/>
<br/>

## Complete example:

~~~dart
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
    // You can write it to initialize adapter here
    Adapter.initialize(context);
    return Scaffold(
        body: Container(
            width: 25.vw,
            height: 75.vh,
            color: Colors.red
        )
    );
  }
}

~~~
