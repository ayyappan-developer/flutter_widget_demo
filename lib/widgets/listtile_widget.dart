import 'package:flutter/material.dart';

// ListTile: a ready-made row with leading, title, subtitle and trailing.
// Divider: a thin line between rows.
class ListTileWidget extends StatelessWidget {
  const ListTileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListTile'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        children: [
          // 1. Only title
          const ListTile(
            title: Text('Only title'),
          ),
          const Divider(),

          // 2. title + subtitle
          const ListTile(
            title: Text('Title'),
            subtitle: Text('Subtitle text'),
          ),
          const Divider(),

          // 3. leading + trailing
          const ListTile(
            leading: Icon(Icons.person, color: Colors.blue),
            title: Text('Ravi Kumar'),
            subtitle: Text('CSE - Final year'),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          const Divider(),

          // 4. Avatar leading and tap action
          ListTile(
            leading: const CircleAvatar(child: Text('P')),
            title: const Text('Priya'),
            subtitle: const Text('Tap me'),
            trailing: const Icon(Icons.call, color: Colors.green),
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('You tapped Priya')),
              );
            },
          ),
          const Divider(),

          // 5. Settings style row
          const ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
            trailing: Icon(Icons.chevron_right),
          ),
        ],
      ),
    );
  }
}
