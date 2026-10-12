import 'package:flutter/material.dart';

// Center: puts the child in the middle.
// Align: puts the child at any position (topLeft, bottomRight, ...).
class CenterWidget extends StatelessWidget {
  const CenterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Center & Align'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        children: [
          // 1. Center
          Container(
            height: 150,
            margin: const EdgeInsets.all(16),
            color: Colors.blue.shade50,
            child: const Center(
              child: Text('I am in the Center', style: TextStyle(fontSize: 18)),
            ),
          ),

          // 2. Align - different positions inside one box
          Container(
            height: 250,
            margin: const EdgeInsets.all(16),
            color: Colors.orange.shade50,
            child: const Stack(
              children: [
                Align(alignment: Alignment.topLeft, child: Text('topLeft')),
                Align(alignment: Alignment.topRight, child: Text('topRight')),
                Align(alignment: Alignment.center, child: Text('center')),
                Align(alignment: Alignment.bottomLeft, child: Text('bottomLeft')),
                Align(alignment: Alignment.bottomRight, child: Text('bottomRight')),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
