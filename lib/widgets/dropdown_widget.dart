import 'package:flutter/material.dart';

// DropdownButton: pick one item from a drop-down list.
class DropdownWidget extends StatefulWidget {
  const DropdownWidget({super.key});

  @override
  State<DropdownWidget> createState() => _DropdownWidgetState();
}

class _DropdownWidgetState extends State<DropdownWidget> {
  List<String> years = ['1st Year', '2nd Year', '3rd Year', '4th Year'];
  String selectedYear = '1st Year';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DropdownButton'),
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
            const Text('Select your year', style: TextStyle(fontSize: 18)),
            const SizedBox(height: 12),
            DropdownButton<String>(
              value: selectedYear,
              // Turn every String into a DropdownMenuItem
              items: years.map((year) {
                return DropdownMenuItem<String>(
                  value: year,
                  child: Text(year),
                );
              }).toList(),
              onChanged: (value) {
                setState(() {
                  selectedYear = value!;
                });
              },
            ),
            const SizedBox(height: 24),
            Text('You selected: $selectedYear', style: const TextStyle(fontSize: 22)),
          ],
        ),
      ),
    );
  }
}
