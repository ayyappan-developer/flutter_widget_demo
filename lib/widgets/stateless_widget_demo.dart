import 'package:flutter/material.dart';

// StatelessWidget: does NOT change after it is drawn.
// Data comes in through the constructor (final variables).
class StatelessWidgetDemo extends StatelessWidget {
  const StatelessWidgetDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('StatelessWidget'),
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
          children: [
            Text('Same ProfileCard widget, different data:'),
            SizedBox(height: 12),
            ProfileCard(name: 'Ravi', department: 'CSE'),
            ProfileCard(name: 'Priya', department: 'ECE'),
            ProfileCard(name: 'Karthik', department: 'MECH'),
          ],
        ),
      ),
    );
  }
}

// Our own reusable StatelessWidget
class ProfileCard extends StatelessWidget {
  final String name;
  final String department;

  const ProfileCard({super.key, required this.name, required this.department});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: const Icon(Icons.person),
        title: Text(name),
        subtitle: Text(department),
      ),
    );
  }
}
