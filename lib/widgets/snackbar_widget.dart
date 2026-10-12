import 'package:flutter/material.dart';

// SnackBar: a short message at the bottom of the screen.
// Show it with ScaffoldMessenger.of(context).showSnackBar(...)
class SnackBarWidget extends StatelessWidget {
  const SnackBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SnackBar'),
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
            // 1. Simple SnackBar
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Saved successfully')),
                );
              },
              child: const Text('Simple SnackBar'),
            ),
            const SizedBox(height: 16),

            // 2. SnackBar with color and an action button
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: const Text('Post deleted'),
                    backgroundColor: Colors.red,
                    duration: const Duration(seconds: 3),
                    action: SnackBarAction(
                      label: 'UNDO',
                      textColor: Colors.white,
                      onPressed: () {},
                    ),
                  ),
                );
              },
              child: const Text('SnackBar with action'),
            ),
          ],
        ),
      ),
    );
  }
}
