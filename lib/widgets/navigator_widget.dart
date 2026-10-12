import 'package:flutter/material.dart';

// Navigator.push -> open a new page (goes on top of the stack)
// Navigator.pop  -> close the page (go back)
// We can send data to the next page using its constructor.
class NavigatorWidget extends StatelessWidget {
  const NavigatorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Navigator push & pop'),
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
            const Text('Page 1', style: TextStyle(fontSize: 28)),
            const SizedBox(height: 20),

            // 1. Go to the next page
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SecondPage(name: 'Ravi')),
                );
              },
              child: const Text('Go to Page 2 (send name "Ravi")'),
            ),
          ],
        ),
      ),
    );
  }
}

// The second page. It receives the name from page 1.
class SecondPage extends StatelessWidget {
  final String name;

  const SecondPage({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page 2'),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
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
            Text('Hello $name', style: const TextStyle(fontSize: 28)),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context); // back to Page 1
              },
              child: const Text('Go Back'),
            ),
          ],
        ),
      ),
    );
  }
}
