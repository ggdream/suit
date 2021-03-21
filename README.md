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

## A library of platform adaptation scheme based on the ViewPort (vw and vh) and Relative Position.

---

> The package contains two types of adapters. One is a global adapter based on viewport(vw, vh), and the other is a percentage adapter based on relative positioning.

---

## 1. The global adapter based on viewport(vw, vh)
### 1) Initialize the adapter
~~~dart
    /// [Adapter] is the global adapter, for Viewport(vw, vh).
    Adapter.initialize(context);
~~~
 - Cannot initialize under root widget
 - An application only needs to initialize the global adapter once
 - You can write it in any lifecycle hook, but for desktop application adaptation, it's better to write it in the `build` method



### 2) Import the package and write size by `vw, vh` anywhere
~~~dart
Container(
  width: 25.vw,
  height: 75.vh
)
~~~
- Method 1: 36.vw, 52.0.vw, 100.vh
- Method 2: Adapter.setVW(25.0), Adapter.setVH(30.0)
- Method 3: Adapter.vw * 32, Adapter.vh * 75



---

## 2. The percentage adapter based on Relative Position.
### Method 1: Use the extension syntax of the Dart language
~~~dart
/// Relative to the `percentage` of encapsulated `class widgets`.
@override
Widget build(BuildContext context) {
  return Text('hello', style: TextStyle(fontSize: 20.rw(context)));
}
~~~

### Method 2: Use the method of instantiating the `RAdater` class
~~~dart
@override
Widget build(BuildContext context) {
  var adapter = RAdapter(context);
  return Text('hello', style: TextStyle(fontSize: adapter.setRW(20)));
}
~~~

---

## 3. Complete example
[Click me to lookup the whole example code](https://pub.dev/packages/suit/example)
