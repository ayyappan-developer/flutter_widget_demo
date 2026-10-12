import 'package:flutter/material.dart';

// Scaffold: the basic page structure.
// appBar (top), body (middle), floatingActionButton, bottomNavigationBar, drawer.
class ScaffoldWidget extends StatelessWidget {
  const ScaffoldWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,

      // 1. AppBar - the top bar
      appBar: AppBar(
        title: const Text('Scaffold & AppBar'),
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        // actions - buttons on the right side of the AppBar
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
        ],
      ),

      // 2. body - main content
      body: const Center(
        child: Text(
          'This is the body',
          style: TextStyle(fontSize: 22),
        ),
      ),

      // 3. floatingActionButton - round button
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
        child: const Icon(Icons.add),
      ),

      // 4. bottomNavigationBar - any widget at the bottom
      bottomNavigationBar: Container(
        height: 60,
        color: Colors.teal,
        child: const Center(
          child: Text('Bottom area', style: TextStyle(color: Colors.white)),
        ),
      ),
    );
  }
}
