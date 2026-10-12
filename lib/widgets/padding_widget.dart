import 'package:flutter/material.dart';

// Padding: adds empty space around a child.
// EdgeInsets.all, EdgeInsets.symmetric, EdgeInsets.only
class PaddingWidget extends StatelessWidget {
  const PaddingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Padding'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        children: [
          // 1. No padding
          Container(
            color: Colors.red.shade100,
            margin: const EdgeInsets.all(12),
            child: const Text('No padding'),
          ),

          // 2. EdgeInsets.all - same space on all 4 sides
          Container(
            color: Colors.green.shade100,
            margin: const EdgeInsets.all(12),
            child: const Padding(
              padding: EdgeInsets.all(20),
              child: Text('EdgeInsets.all(20)'),
            ),
          ),

          // 3. EdgeInsets.symmetric - horizontal and vertical
          Container(
            color: Colors.blue.shade100,
            margin: const EdgeInsets.all(12),
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
              child: Text('symmetric(horizontal: 40, vertical: 10)'),
            ),
          ),

          // 4. EdgeInsets.only - pick the sides you want
          Container(
            color: Colors.orange.shade100,
            margin: const EdgeInsets.all(12),
            child: const Padding(
              padding: EdgeInsets.only(left: 60, top: 20),
              child: Text('only(left: 60, top: 20)'),
            ),
          ),
        ],
      ),
    );
  }
}
