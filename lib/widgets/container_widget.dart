import 'package:flutter/material.dart';

// Container: a box. Give it size, color, padding, margin, border and radius.
class ContainerWidget extends StatelessWidget {
  const ContainerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Container'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // 1. Simple colored box
            Container(
              width: 150,
              height: 100,
              color: Colors.amber,
              margin: const EdgeInsets.all(16),
              child: const Center(child: Text('Simple Box')),
            ),

            // 2. Rounded corners and border
            Container(
              width: 250,
              padding: const EdgeInsets.all(20),
              margin: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.lightBlue.shade100,
                borderRadius: BorderRadius.circular(16),
                border: Border.all(color: Colors.blue, width: 2),
              ),
              child: const Text('Rounded box with border'),
            ),

            // 3. Shadow
            Container(
              width: 250,
              padding: const EdgeInsets.all(20),
              margin: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: const [
                  BoxShadow(color: Colors.black26, blurRadius: 10, offset: Offset(0, 4)),
                ],
              ),
              child: const Text('Box with shadow'),
            ),

            // 4. Circle
            Container(
              width: 100,
              height: 100,
              margin: const EdgeInsets.all(16),
              decoration: const BoxDecoration(
                color: Colors.green,
                shape: BoxShape.circle,
              ),
              child: const Center(
                child: Text('Circle', style: TextStyle(color: Colors.white)),
              ),
            ),

            // 5. Gradient
            Container(
              width: 250,
              height: 80,
              margin: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                gradient: const LinearGradient(colors: [Colors.purple, Colors.orange]),
              ),
              child: const Center(
                child: Text('Gradient', style: TextStyle(color: Colors.white, fontSize: 20)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
