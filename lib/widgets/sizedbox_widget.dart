import 'package:flutter/material.dart';

// SizedBox: 1) gives a fixed size to a child  2) makes an empty gap.
class SizedBoxWidget extends StatelessWidget {
  const SizedBoxWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SizedBox'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 1. Fixed size for a button
            const Text('1. Full width button'),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(onPressed: () {}, child: const Text('Login')),
            ),

            // 2. Gap between widgets (height)
            const SizedBox(height: 40),
            const Text('2. Gap of 40 above this text'),

            // 3. Gap between widgets in a Row (width)
            const SizedBox(height: 20),
            const Text('3. Gap in a Row'),
            const Row(
              children: [
                Icon(Icons.email),
                SizedBox(width: 30),
                Text('30 pixels gap on the left'),
              ],
            ),
            const SizedBox(height: 20),

            // 4. Square box
            const Text('4. SizedBox 100 x 100'),
            SizedBox(
              width: 100,
              height: 100,
              child: Container(color: Colors.teal),
            ),
          ],
        ),
      ),
    );
  }
}
