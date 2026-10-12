import 'package:flutter/material.dart';

// ListView: a scrollable column of widgets.
// children: [ ] - a fixed list. Every item is built at once.
// Best for short lists and settings pages.
class ListViewWidget extends StatelessWidget {
  const ListViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(12),
        children: [
          Image.network('https://picsum.photos/seed/a/600/400'),
          const SizedBox(height: 12),
          Image.network('https://picsum.photos/seed/b/600/400'),
          const SizedBox(height: 12),
          Image.network('https://picsum.photos/seed/c/600/400'),
          const SizedBox(height: 12),

          // Horizontal ListView needs a fixed height
          const Text('Horizontal ListView', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          const SizedBox(height: 8),
          SizedBox(
            height: 100,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(width: 100, color: Colors.red, margin: const EdgeInsets.all(4)),
                Container(width: 100, color: Colors.green, margin: const EdgeInsets.all(4)),
                Container(width: 100, color: Colors.blue, margin: const EdgeInsets.all(4)),
                Container(width: 100, color: Colors.orange, margin: const EdgeInsets.all(4)),
                Container(width: 100, color: Colors.purple, margin: const EdgeInsets.all(4)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
