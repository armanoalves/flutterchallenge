import 'package:flutter/material.dart';
import 'func.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Check Box's          Resetar todos os itens"),
        ),
        body: SafeArea(
          child: ListView.builder(
            itemCount: 1000,
            itemBuilder: (context, item) => const Construct(),
          ),
        ),
      ),
    );
  }
}

class Construct extends StatefulWidget {
  const Construct({Key? key}) : super(key: key);

  @override
  _ConstructState createState() => _ConstructState();
}

class _ConstructState extends State<Construct> {
  bool state = Mark.generateRandomEnabledState();
  String name = Mark.generateRandomString(11);
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        color: state ? const Color(0xFFE1BEE7) : Colors.white,
        child: Row(
          children: [
            Text(
              name,
              style: const TextStyle(fontSize: 20, color: Colors.black),
            ),
            Checkbox(
                value: state,
                onChanged: (value) {
                  setState(() {
                    state = !state;
                  });
                })
          ],
        ));
  }
}
