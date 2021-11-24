import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _contador = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xFF4D7B95),
        body: SafeArea(
          child: Center(
            child: Column(
              children: [
                Container(
                  child: const CircleAvatar(
                      radius: 100,
                      backgroundImage: NetworkImage(
                          'https://myanimelist.vip/wp-content/uploads/2021/11/takt-op-destiny-episodio-8-animes-online-hd.jpg')),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 25.0),
                ),
                Container(
                  child: const Text(
                    "Armano Barros Alves Junior",
                    style: TextStyle(fontSize: 25, color: Colors.white),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(25),
                ),
                Container(
                  width: 280,
                  child: const Text(
                      "Lorem ipsum dolor sit amet consectetur adipiscing elit ac, conubia lacus libero enim purus imperdiet lectus justo diam, faucibus blandit ultricies vestibulum quisque parturient natoque.",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center),
                ),
                const Padding(
                  padding: EdgeInsets.all(25),
                ),
                const Text(
                  "Número de cliks:",
                  style: TextStyle(fontSize: 23, color: Colors.white),
                ),
                Text(
                  "$_contador",
                  style: Theme.of(context).textTheme.headline6,
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 10),
                ),
                ButtonTheme(
                  minWidth: 220.0,
                  height: 80.0,
                  child: RaisedButton(
                    color: Colors.deepPurple.shade400,
                    onPressed: () {
                      setState(() {
                        _contador++;
                      });
                    },
                    child: const Text(
                      "Button",
                      style: TextStyle(fontSize: 25, color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class D7B95 {}
