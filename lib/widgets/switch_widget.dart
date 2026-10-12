import 'package:flutter/material.dart';

// Switch: toggle on / off. Value is true or false.
// SwitchListTile: switch + text in one row.
class SwitchWidget extends StatefulWidget {
  const SwitchWidget({super.key});

  @override
  State<SwitchWidget> createState() => _SwitchWidgetState();
}

class _SwitchWidgetState extends State<SwitchWidget> {
  bool lightOn = false;
  bool notifications = true;
  bool darkMode = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Switch'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        children: [
          const SizedBox(height: 30),

          // 1. Simple Switch controlling a bulb icon
          Icon(
            Icons.lightbulb,
            size: 100,
            color: lightOn ? Colors.amber : Colors.grey,
          ),
          Switch(
            value: lightOn,
            onChanged: (value) {
              setState(() {
                lightOn = value;
              });
            },
          ),
          Text(lightOn ? 'Light is ON' : 'Light is OFF'),
          const Divider(height: 40),

          // 2. SwitchListTile - settings page style
          SwitchListTile(
            title: const Text('Notifications'),
            subtitle: const Text('Get app alerts'),
            secondary: const Icon(Icons.notifications),
            value: notifications,
            onChanged: (value) {
              setState(() {
                notifications = value;
              });
            },
          ),
          SwitchListTile(
            title: const Text('Dark mode'),
            secondary: const Icon(Icons.dark_mode),
            value: darkMode,
            onChanged: (value) {
              setState(() {
                darkMode = value;
              });
            },
          ),
        ],
      ),
    );
  }
}
