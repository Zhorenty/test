import 'package:flutter/material.dart';
import 'second_screen.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.add_box,
          size: 20,
          textDirection: TextDirection.rtl,
        ),
        centerTitle: true,
        title: const Text('Первая неделя'),
      ),
      body: Container(
        padding: const EdgeInsets.all(12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SecondScreen()),
                );
              },
              child: const Text('На вторую неделю'),
            ),
          ],
        ),
      ),
    );
  }
}

class Lessons extends StatefulWidget {
  const Lessons({super.key});

  @override
  State<Lessons> createState() => _LessonsState();
}

class _LessonsState extends State<Lessons> {
  int _value = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.all(40),
        children: [
          DropdownButton(
            value: _value,
            items: const [
              DropdownMenuItem(
                value: 1,
                child: Card(
                  child: Text('первый второй'),
                ),
              )
            ],
            onChanged: (value) {
              setState(() {
                _value = value!;
              });
            },
          ),
        ],
      ),
    );
  }
}
