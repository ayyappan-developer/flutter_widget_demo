import 'package:flutter/material.dart';

// Drawer: a side menu that slides in from the left.
// When a Scaffold has a drawer, the AppBar shows a menu icon.
class DrawerWidget extends StatefulWidget {
  const DrawerWidget({super.key});

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  String selectedMenu = 'Home';

  void selectMenu(String menu) {
    setState(() {
      selectedMenu = menu;
    });
    Navigator.pop(context); // close the drawer
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Drawer'),
        actions: [
          // Back to Home screen (the leading place shows the menu icon)
          IconButton(
            icon: const Icon(Icons.home),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const UserAccountsDrawerHeader(
              accountName: Text('Ayyappan G'),
              accountEmail: Text('trainer@ksr.edu'),
              currentAccountPicture: CircleAvatar(child: Text('AG')),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Home'),
              onTap: () {
                selectMenu('Home');
              },
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('Profile'),
              onTap: () {
                selectMenu('Profile');
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Settings'),
              onTap: () {
                selectMenu('Settings');
              },
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text('Logout'),
              onTap: () {
                selectMenu('Logout');
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Tap the menu icon (top left)'),
            const SizedBox(height: 20),
            Text('Selected: $selectedMenu', style: const TextStyle(fontSize: 24)),
          ],
        ),
      ),
    );
  }
}
