import 'package:flutter/material.dart';

// GridView: shows items in rows and columns.
// GridView.count   -> fixed number of columns (crossAxisCount)
// GridView.builder -> builds items on demand (like ListView.builder)
class GridViewWidget extends StatelessWidget {
  const GridViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GridView'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        children: [
          // 1. GridView.count - menu with icons
          const Padding(
            padding: EdgeInsets.all(8),
            child: Text('GridView.count', style: TextStyle(fontWeight: FontWeight.bold)),
          ),
          SizedBox(
            height: 220,
            child: GridView.count(
              crossAxisCount: 3,
              padding: const EdgeInsets.all(8),
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
              children: [
                menuBox(Icons.home, 'Home', Colors.blue),
                menuBox(Icons.person, 'Profile', Colors.green),
                menuBox(Icons.settings, 'Settings', Colors.orange),
                menuBox(Icons.camera_alt, 'Camera', Colors.purple),
                menuBox(Icons.message, 'Chat', Colors.teal),
                menuBox(Icons.logout, 'Logout', Colors.red),
              ],
            ),
          ),

          // 2. GridView.builder - photo gallery
          const Padding(
            padding: EdgeInsets.all(8),
            child: Text('GridView.builder', style: TextStyle(fontWeight: FontWeight.bold)),
          ),
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.all(8),
              itemCount: 30,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 4,
                mainAxisSpacing: 4,
              ),
              itemBuilder: (context, index) {
                return Image.network(
                  'https://picsum.photos/seed/grid$index/200/200',
                  fit: BoxFit.cover,
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  // One box in the menu grid
  Widget menuBox(IconData icon, String title, Color color) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: Colors.white, size: 32),
          const SizedBox(height: 4),
          Text(title, style: const TextStyle(color: Colors.white)),
        ],
      ),
    );
  }
}
