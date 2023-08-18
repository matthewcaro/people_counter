import 'package:flutter/material.dart';
import 'package:people_counter/counter_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
              seedColor: Color.fromARGB(255, 233, 142, 68))),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("People Counter"),
        ),
        body: const CounterPage(),
      ),
    );
  }
}
