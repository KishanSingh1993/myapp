import 'package:flutter/material.dart';
import '../widgets/counter_display.dart';
import '../widgets/counter_buttons.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mantra Jaap'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CounterDisplay(),
            const SizedBox(height: 20),
            CounterButtons(),
          ],
        ),
      ),
    );
  }
}
