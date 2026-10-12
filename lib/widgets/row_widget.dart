import 'package:flutter/material.dart';

// Row: places children from left to right (horizontal).
// mainAxisAlignment  -> horizontal position
// crossAxisAlignment -> vertical position
class RowWidget extends StatelessWidget {
  const RowWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Row'),
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Demo 1: Icon + Text in a Row
            const Text('Demo 1: Icon and Text', style: TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            const Row(
              children: [
                Icon(Icons.phone, color: Colors.green),
                SizedBox(width: 8),
                Text('+91 98765 43210', style: TextStyle(fontSize: 18)),
              ],
            ),
            const SizedBox(height: 24),

            // Demo 2: Post header (image + name + menu)
            const Text('Demo 2: Post header', style: TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            Row(
              children: [
                const CircleAvatar(
                  backgroundImage: NetworkImage('https://picsum.photos/seed/user1/100/100'),
                ),
                const SizedBox(width: 10),
                const Text('user_1', style: TextStyle(fontWeight: FontWeight.bold)),
                const Spacer(), // pushes the next widget to the end
                IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
              ],
            ),
            const SizedBox(height: 24),

            // Demo 3: different mainAxisAlignment values
            const Text('Demo 3: MainAxisAlignment', style: TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            const Text('start'),
            boxRow(MainAxisAlignment.start),
            const Text('center'),
            boxRow(MainAxisAlignment.center),
            const Text('end'),
            boxRow(MainAxisAlignment.end),
            const Text('spaceBetween'),
            boxRow(MainAxisAlignment.spaceBetween),
            const Text('spaceAround'),
            boxRow(MainAxisAlignment.spaceAround),
            const Text('spaceEvenly'),
            boxRow(MainAxisAlignment.spaceEvenly),
          ],
        ),
      ),
    );
  }

  // A Row with three colored boxes
  Widget boxRow(MainAxisAlignment alignment) {
    return Container(
      color: Colors.grey.shade200,
      margin: const EdgeInsets.only(bottom: 12, top: 4),
      child: Row(
        mainAxisAlignment: alignment,
        children: [
          Container(width: 50, height: 40, color: Colors.red),
          Container(width: 50, height: 40, color: Colors.green),
          Container(width: 50, height: 40, color: Colors.blue),
        ],
      ),
    );
  }
}
