import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  int _counter = 10;

  void _sumar() {
    setState(() {
      _counter += 2;
    });
  }

  void _restar() {
    setState(() {
      _counter -= 2;
    });
  }

  void _multiplicar() {
    setState(() {
      _counter *= 2;
    });
  }

  void _dividir() {
    setState(() {
      _counter ~/= 2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculadora'),
      ),
      body: Center(
        child: Text(
          '$_counter',
          style: const TextStyle(
            fontSize: 50,
          ),
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: _sumar,
            child: const Icon(Icons.add),
          ),
          FloatingActionButton(
            onPressed: _restar,
            child: const Icon(Icons.remove),
          ),
          FloatingActionButton(
            onPressed: _multiplicar,
            child: const Icon(Icons.close),
          ),
          FloatingActionButton(
            onPressed: _dividir,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '/',
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
