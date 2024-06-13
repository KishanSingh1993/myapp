import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/counter_model.dart';

class CounterButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final counter = Provider.of<CounterModel>(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        ElevatedButton(
          onPressed: counter.increment,
          child: const Text('Increment'),
        ),
        SizedBox(width: 20),
        ElevatedButton(
          onPressed: counter.reset,
          child: const Text('Reset'),
        ),
      ],
    );
  }
}
