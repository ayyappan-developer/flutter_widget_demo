import 'package:flutter/material.dart';

// Stack: places widgets on top of each other.
// First child is at the back, last child is on top.
// Positioned: pins a child to the edges (left, top, right, bottom).
class StackWidget extends StatelessWidget {
  const StackWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stack & Positioned'),
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
            // Demo 1: Three boxes on top of each other
            const Text('Demo 1: Boxes on top of each other', style: TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            Stack(
              children: [
                Container(width: 200, height: 200, color: Colors.red),
                Container(width: 150, height: 150, color: Colors.green),
                Container(width: 100, height: 100, color: Colors.blue),
              ],
            ),
            const SizedBox(height: 24),

            // Demo 2: Image with text and a badge on top
            const Text('Demo 2: Image with label and badge', style: TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            Stack(
              children: [
                // back: image
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.network(
                    'https://picsum.photos/seed/stack/600/400',
                    width: double.infinity,
                    height: 220,
                    fit: BoxFit.cover,
                  ),
                ),
                // front: label at the bottom left
                Positioned(
                  left: 12,
                  bottom: 12,
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                    color: Colors.black54,
                    child: const Text('Day 1 at KSR', style: TextStyle(color: Colors.white, fontSize: 18)),
                  ),
                ),
                // front: heart icon at the top right
                const Positioned(
                  right: 12,
                  top: 12,
                  child: Icon(Icons.favorite, color: Colors.red, size: 36),
                ),
              ],
            ),
            const SizedBox(height: 24),

            // Demo 3: Notification badge on an icon
            const Text('Demo 3: Notification badge', style: TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            Stack(
              children: [
                const Icon(Icons.notifications, size: 60),
                Positioned(
                  right: 0,
                  top: 0,
                  child: Container(
                    padding: const EdgeInsets.all(5),
                    decoration: const BoxDecoration(color: Colors.red, shape: BoxShape.circle),
                    child: const Text('3', style: TextStyle(color: Colors.white)),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
