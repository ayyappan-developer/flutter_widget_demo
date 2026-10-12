import 'package:flutter/material.dart';

// ListView.builder: builds rows on demand - only the rows on screen.
// itemCount   -> how many rows
// itemBuilder -> builds one row using index (0, 1, 2 ...)
// Fast for long or growing lists.
class ListViewBuilderWidget extends StatelessWidget {
  const ListViewBuilderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // A list of 50 student names
    List<String> students = List.generate(50, (index) => 'Student ${index + 1}');

    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView.builder'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: ListView.builder(
        itemCount: students.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(child: Text('${index + 1}')),
            title: Text(students[index]),
            subtitle: Text('Roll No: KSR${100 + index}'),
          );
        },
      ),
    );
  }
}
