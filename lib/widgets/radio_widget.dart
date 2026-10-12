import 'package:flutter/material.dart';

// Radio: choose ONE option from many.
// RadioGroup holds the selected value (groupValue) for all radios inside it.
class RadioWidget extends StatefulWidget {
  const RadioWidget({super.key});

  @override
  State<RadioWidget> createState() => _RadioWidgetState();
}

class _RadioWidgetState extends State<RadioWidget> {
  String gender = 'Male';
  String department = 'CSE';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Radio'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 1. Radio buttons in a Row
            const Text('Gender', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            RadioGroup<String>(
              groupValue: gender,
              onChanged: (value) {
                setState(() {
                  gender = value!;
                });
              },
              child: const Row(
                children: [
                  Radio<String>(value: 'Male'),
                  Text('Male'),
                  SizedBox(width: 20),
                  Radio<String>(value: 'Female'),
                  Text('Female'),
                ],
              ),
            ),
            Text('Selected: $gender'),
            const Divider(height: 40),

            // 2. RadioListTile - radio + text in one row
            const Text('Department', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            RadioGroup<String>(
              groupValue: department,
              onChanged: (value) {
                setState(() {
                  department = value!;
                });
              },
              child: const Column(
                children: [
                  RadioListTile<String>(title: Text('CSE'), value: 'CSE'),
                  RadioListTile<String>(title: Text('ECE'), value: 'ECE'),
                  RadioListTile<String>(title: Text('MECH'), value: 'MECH'),
                  RadioListTile<String>(title: Text('EEE'), value: 'EEE'),
                ],
              ),
            ),
            Text('Selected: $department'),
          ],
        ),
      ),
    );
  }
}
