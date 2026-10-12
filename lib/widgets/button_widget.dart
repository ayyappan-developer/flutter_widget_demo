import 'package:flutter/material.dart';

// Buttons: ElevatedButton, TextButton, OutlinedButton, IconButton, FloatingActionButton.
// Stateful because the counter text changes when a button is pressed.
class ButtonWidget extends StatefulWidget {
  const ButtonWidget({super.key});

  @override
  State<ButtonWidget> createState() => _ButtonWidgetState();
}

class _ButtonWidgetState extends State<ButtonWidget> {
  String message = 'Press any button';

  void showMessage(String text) {
    setState(() {
      message = text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Buttons'),
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
            Text(message, style: const TextStyle(fontSize: 22)),
            const SizedBox(height: 30),

            // 1. ElevatedButton - main action
            ElevatedButton(
              onPressed: () {
                showMessage('ElevatedButton pressed');
              },
              child: const Text('ElevatedButton'),
            ),
            const SizedBox(height: 12),

            // 2. TextButton - simple, no background
            TextButton(
              onPressed: () {
                showMessage('TextButton pressed');
              },
              child: const Text('TextButton'),
            ),
            const SizedBox(height: 12),

            // 3. OutlinedButton - only border
            OutlinedButton(
              onPressed: () {
                showMessage('OutlinedButton pressed');
              },
              child: const Text('OutlinedButton'),
            ),
            const SizedBox(height: 12),

            // 4. ElevatedButton with icon and custom color
            ElevatedButton.icon(
              onPressed: () {
                showMessage('Send pressed');
              },
              icon: const Icon(Icons.send),
              label: const Text('Send'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                foregroundColor: Colors.white,
              ),
            ),
            const SizedBox(height: 12),

            // 5. IconButton - only an icon
            IconButton(
              onPressed: () {
                showMessage('IconButton pressed');
              },
              icon: const Icon(Icons.thumb_up, color: Colors.blue, size: 36),
            ),
            const SizedBox(height: 12),

            // 6. Disabled button (onPressed: null)
            const ElevatedButton(
              onPressed: null,
              child: Text('Disabled'),
            ),
          ],
        ),
      ),

      // 7. FloatingActionButton - round button at the corner
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showMessage('FAB pressed');
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
