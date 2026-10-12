import 'package:flutter/material.dart';

// Checkbox: tick on / off. Value is true or false.
// CheckboxListTile: checkbox + text in one row.
class CheckboxWidget extends StatefulWidget {
  const CheckboxWidget({super.key});

  @override
  State<CheckboxWidget> createState() => _CheckboxWidgetState();
}

class _CheckboxWidgetState extends State<CheckboxWidget> {
  bool agree = false;
  bool flutter = true;
  bool dart = false;
  bool firebase = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Checkbox'),
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
            // 1. Simple Checkbox with Text
            Row(
              children: [
                Checkbox(
                  value: agree,
                  onChanged: (value) {
                    setState(() {
                      agree = value!;
                    });
                  },
                ),
                const Text('I agree to the terms'),
              ],
            ),
            ElevatedButton(
              onPressed: agree ? () {} : null, // enabled only when ticked
              child: const Text('Continue'),
            ),
            const Divider(height: 40),

            // 2. CheckboxListTile
            const Text('Select your skills', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            CheckboxListTile(
              title: const Text('Flutter'),
              value: flutter,
              onChanged: (value) {
                setState(() {
                  flutter = value!;
                });
              },
            ),
            CheckboxListTile(
              title: const Text('Dart'),
              value: dart,
              onChanged: (value) {
                setState(() {
                  dart = value!;
                });
              },
            ),
            CheckboxListTile(
              title: const Text('Firebase'),
              value: firebase,
              onChanged: (value) {
                setState(() {
                  firebase = value!;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
