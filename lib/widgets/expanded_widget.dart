import 'package:flutter/material.dart';

// Expanded: child takes all the free space in a Row / Column.
// flex: shares space in a ratio (1 : 2 : 1).
// Flexible: child can be smaller than the free space.
class ExpandedWidget extends StatelessWidget {
  const ExpandedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Expanded & Flexible'),
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
            // 1. One Expanded fills the rest
            const Text('1. Expanded fills the free space'),
            Row(
              children: [
                Container(width: 60, height: 50, color: Colors.red),
                Expanded(
                  child: Container(height: 50, color: Colors.green),
                ),
                Container(width: 60, height: 50, color: Colors.blue),
              ],
            ),
            const SizedBox(height: 24),

            // 2. flex ratio 1 : 2 : 1
            const Text('2. flex 1 : 2 : 1'),
            Row(
              children: [
                Expanded(flex: 1, child: Container(height: 50, color: Colors.orange)),
                Expanded(flex: 2, child: Container(height: 50, color: Colors.purple)),
                Expanded(flex: 1, child: Container(height: 50, color: Colors.orange)),
              ],
            ),
            const SizedBox(height: 24),

            // 3. Fix for long text in a Row (common error!)
            const Text('3. Long text in a Row - wrap it with Expanded'),
            const Row(
              children: [
                Icon(Icons.info),
                SizedBox(width: 8),
                Expanded(
                  child: Text(
                    'A very long caption that would overflow the screen without Expanded. '
                    'Expanded gives the Text only the space that is left, so it wraps.',
                  ),
                ),
              ],
            ),
            const SizedBox(height: 24),

            // 4. Flexible - only as big as it needs
            const Text('4. Flexible (only uses what it needs)'),
            Row(
              children: [
                Flexible(
                  child: Container(
                    color: Colors.yellow,
                    padding: const EdgeInsets.all(8),
                    child: const Text('Short'),
                  ),
                ),
                Container(width: 60, height: 40, color: Colors.grey),
              ],
            ),
            const SizedBox(height: 24),

            // 5. Expanded inside a Column - fills the rest of the height
            const Text('5. Expanded in a Column (fills the rest of the screen)'),
            Expanded(
              child: Container(
                width: double.infinity,
                color: Colors.teal.shade100,
                child: const Center(child: Text('Rest of the screen')),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
