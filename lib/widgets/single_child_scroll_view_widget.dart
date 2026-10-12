import 'package:flutter/material.dart';

// SingleChildScrollView: makes ONE child (usually a Column) scrollable.
// Without it, a tall Column shows a yellow-black "overflow" error.
class SingleChildScrollViewWidget extends StatelessWidget {
  const SingleChildScrollViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SingleChildScrollView'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const Text('Scroll down', style: TextStyle(fontSize: 22)),
            const SizedBox(height: 12),
            Container(height: 200, color: Colors.red.shade200, child: const Center(child: Text('Box 1'))),
            const SizedBox(height: 12),
            Container(height: 200, color: Colors.green.shade200, child: const Center(child: Text('Box 2'))),
            const SizedBox(height: 12),
            Container(height: 200, color: Colors.blue.shade200, child: const Center(child: Text('Box 3'))),
            const SizedBox(height: 12),
            Container(height: 200, color: Colors.orange.shade200, child: const Center(child: Text('Box 4'))),
            const SizedBox(height: 12),

            // Horizontal scroll
            const Text('Horizontal scroll ->', style: TextStyle(fontSize: 18)),
            const SizedBox(height: 8),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(width: 150, height: 100, color: Colors.purple.shade200, margin: const EdgeInsets.all(4)),
                  Container(width: 150, height: 100, color: Colors.teal.shade200, margin: const EdgeInsets.all(4)),
                  Container(width: 150, height: 100, color: Colors.pink.shade200, margin: const EdgeInsets.all(4)),
                  Container(width: 150, height: 100, color: Colors.amber.shade200, margin: const EdgeInsets.all(4)),
                ],
              ),
            ),
            const SizedBox(height: 12),
            const Text('The End', style: TextStyle(fontSize: 22)),
          ],
        ),
      ),
    );
  }
}
