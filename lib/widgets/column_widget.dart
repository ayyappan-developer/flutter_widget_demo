import 'package:flutter/material.dart';

// Column: places children from top to bottom (vertical).
// mainAxisAlignment  -> vertical position
// crossAxisAlignment -> horizontal position
class ColumnWidget extends StatelessWidget {
  const ColumnWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Column'),
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
            // Demo 1: Text, Icon and Image inside a Column
            const Text('Demo 1: Profile', style: TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              color: Colors.blue.shade50,
              child: Column(
                children: [
                  ClipOval(
                    child: Image.network(
                      'https://picsum.photos/seed/student/200/200',
                      width: 100,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text('Ravi Kumar', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                  const Text('B.E. Computer Science'),
                  const Icon(Icons.school, color: Colors.blue),
                ],
              ),
            ),
            const SizedBox(height: 24),

            // Demo 2: crossAxisAlignment.start (left side)
            const Text('Demo 2: CrossAxisAlignment.start', style: TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            Container(
              width: double.infinity,
              color: Colors.green.shade50,
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Item 1'),
                  Text('Item 2'),
                  Text('Item 3'),
                ],
              ),
            ),
            const SizedBox(height: 24),

            // Demo 3: crossAxisAlignment.end (right side)
            const Text('Demo 3: CrossAxisAlignment.end', style: TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            Container(
              width: double.infinity,
              color: Colors.orange.shade50,
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text('Item 1'),
                  Text('Item 2'),
                  Text('Item 3'),
                ],
              ),
            ),
            const SizedBox(height: 24),

            // Demo 4: mainAxisAlignment.spaceEvenly inside a fixed height
            const Text('Demo 4: MainAxisAlignment.spaceEvenly', style: TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            Container(
              width: double.infinity,
              height: 200,
              color: Colors.purple.shade50,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(width: 60, height: 30, color: Colors.purple),
                  Container(width: 60, height: 30, color: Colors.purple.shade300),
                  Container(width: 60, height: 30, color: Colors.purple.shade100),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
