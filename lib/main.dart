import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Color currentColor = Colors.amber;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // ignore: prefer_const_constructors
        title: Text("115. Color Picker"),
      ),
      // ignore: prefer_const_constructors
      body:
          // ignore: prefer_const_constructors
          Center(
        child: RaisedButton(
          color: currentColor,
          child: const Text("Change My Color"),
          onPressed: () {
            showDialog(
                context: context,
                builder: (BuildContext context) {
                  // ignore: prefer_const_constructors
                  return AlertDialog(
                    title: Text("Select a color"),
                  );
                });
          },
        ),
      ),
    );
  }
}
