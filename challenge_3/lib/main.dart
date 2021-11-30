import 'package:flutter/material.dart';
import 'func.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  List<bool> listbool = Aux.listBool();
  List<String> liststring = Aux.listString();
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Text("Check Box's"),
          actions: [
            TextButton(
              onPressed: () {
                setState(() {
                  ListView.builder(
                    itemCount: widget.liststring.length,
                    itemBuilder: (context, item) => Construct(
                        state: widget.listbool[item],
                        name: widget.liststring[item]),
                  );
                });
              },
              child: const Text(
                "Resetar todos os itens",
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),
          ],
        ),
        body: SafeArea(
          child: ListView.builder(
            itemCount: widget.listbool.length,
            itemBuilder: (context, item) => Construct(
                state: widget.listbool[item], name: widget.liststring[item]),
          ),
        ),
      ),
    );
  }
}

class Construct extends StatefulWidget {
  bool state;
  String name;
  Construct({Key? key, required this.state, required this.name})
      : super(key: key);

  @override
  _ConstructState createState() => _ConstructState();
}

class _ConstructState extends State<Construct> {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        color: widget.state ? const Color(0xFFB2EBF2) : Colors.white,
        child: Row(
          children: [
            Text(
              widget.name,
              style: const TextStyle(fontSize: 20, color: Colors.black),
            ),
            Checkbox(
                value: widget.state,
                onChanged: (value) {
                  setState(() {
                    widget.state = !widget.state;
                  });
                })
          ],
        ));
  }
}

class Reset extends StatefulWidget {
  const Reset({Key? key}) : super(key: key);

  @override
  _ResetState createState() => _ResetState();
}

class _ResetState extends State<Reset> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
