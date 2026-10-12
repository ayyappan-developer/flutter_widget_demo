import 'package:flutter/material.dart';

// Icon: shows a Material icon. Find more names at fonts.google.com/icons
class IconWidget extends StatelessWidget {
  const IconWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Icon'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Simple icon
            Icon(Icons.home),
            SizedBox(height: 20),

            // Icon with size and color
            Icon(Icons.favorite, size: 60, color: Colors.red),
            SizedBox(height: 20),

            // Many icons in a Row
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.star, color: Colors.orange, size: 40),
                Icon(Icons.star, color: Colors.orange, size: 40),
                Icon(Icons.star, color: Colors.orange, size: 40),
                Icon(Icons.star_half, color: Colors.orange, size: 40),
                Icon(Icons.star_border, color: Colors.orange, size: 40),
              ],
            ),
            SizedBox(height: 20),

            // Icon with Text
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.location_on, color: Colors.green),
                SizedBox(width: 8),
                Text('Tiruchengode', style: TextStyle(fontSize: 18)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
