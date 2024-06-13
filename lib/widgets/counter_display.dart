import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/counter_model.dart';

class CounterDisplay extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final counter = Provider.of<CounterModel>(context);
    return Text(
      '${counter.count}',
      style: const TextStyle(fontSize: 80, fontWeight: FontWeight.bold),
    );
  }
}
