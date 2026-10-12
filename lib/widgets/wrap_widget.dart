import 'package:flutter/material.dart';

// Wrap: like a Row, but moves children to the next line when there is no space.
// spacing -> gap between items, runSpacing -> gap between lines.
class WrapWidget extends StatelessWidget {
  const WrapWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Wrap'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Skills', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            SizedBox(height: 12),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: [
                Chip(label: Text('Flutter')),
                Chip(label: Text('Dart')),
                Chip(label: Text('Firebase')),
                Chip(label: Text('Supabase')),
                Chip(label: Text('Git')),
                Chip(label: Text('REST API')),
                Chip(label: Text('UI Design')),
                Chip(label: Text('Android')),
                Chip(label: Text('iOS')),
                Chip(avatar: Icon(Icons.star), label: Text('Claude AI')),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
