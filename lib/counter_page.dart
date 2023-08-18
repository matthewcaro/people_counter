import 'package:flutter/material.dart';
import 'package:people_counter/styles.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  var counter = 0;
  var capacity = 15;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("$counter",
                style: TextStyle(
                    fontSize: 80,
                    color: counter > capacity ? Colors.red : Colors.green)),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text("/"),
            ),
            SizedBox(
              width: 100,
              child: TextField(
                onChanged: (value) {
                  setState(() {
                    var intValue = int.tryParse(value);
                    if (intValue != null) {
                      capacity = intValue;
                    }
                  });
                },
                style: myTextStyle.title,
              ),
            ),
          ],
        ),
        Text("Maximum Capacity: $capacity"),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      print("$counter");
                      counter++;
                    });
                  },
                  child: const Text("+1", style: TextStyle(fontSize: 30))),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      counter--;
                    });
                  },
                  child: const Text("-1", style: TextStyle(fontSize: 30))),
            ),
          ],
        ),
      ],
    );
  }
}
