import 'package:flutter/material.dart';

// StatefulWidget: data CAN change while the app runs.
// Two classes: the Widget + the State.
// Call setState() to change data -> build() runs again -> screen updates.
class StatefulWidgetDemo extends StatefulWidget {
  const StatefulWidgetDemo({super.key});

  @override
  State<StatefulWidgetDemo> createState() => _StatefulWidgetDemoState();
}

class _StatefulWidgetDemoState extends State<StatefulWidgetDemo> {
  int count = 0; // state (data)
  bool liked = false; // state (data)

  @override
  void initState() {
    super.initState();
    // Runs once when the screen opens
  }

  @override
  void dispose() {
    // Runs once when the screen closes
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('StatefulWidget'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // 1. Counter app
            const Text('Counter', style: TextStyle(fontSize: 20)),
            Text('$count', style: const TextStyle(fontSize: 60, fontWeight: FontWeight.bold)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      count--;
                    });
                  },
                  child: const Text('-'),
                ),
                const SizedBox(width: 20),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      count++;
                    });
                  },
                  child: const Text('+'),
                ),
              ],
            ),
            const SizedBox(height: 50),

            // 2. Like button
            const Text('Like Button', style: TextStyle(fontSize: 20)),
            IconButton(
              iconSize: 60,
              onPressed: () {
                setState(() {
                  liked = !liked;
                });
              },
              icon: Icon(
                liked ? Icons.favorite : Icons.favorite_border,
                color: Colors.red,
              ),
            ),
            Text(liked ? 'Liked' : 'Not liked'),
          ],
        ),
      ),
    );
  }
}
