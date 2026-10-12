import 'package:flutter/material.dart';

// CircleAvatar: a round widget for profile pictures, letters or icons.
class CircleAvatarWidget extends StatelessWidget {
  const CircleAvatarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CircleAvatar'),
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
            // 1. With a letter
            CircleAvatar(
              radius: 30,
              child: Text('AG', style: TextStyle(fontSize: 20)),
            ),
            SizedBox(height: 20),

            // 2. With an icon and color
            CircleAvatar(
              radius: 30,
              backgroundColor: Colors.orange,
              child: Icon(Icons.person, color: Colors.white, size: 30),
            ),
            SizedBox(height: 20),

            // 3. With a network image
            CircleAvatar(
              radius: 60,
              backgroundImage: NetworkImage('https://picsum.photos/seed/avatar/200/200'),
            ),
            SizedBox(height: 20),

            // 4. Stories row (like Instagram)
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CircleAvatar(radius: 28, backgroundImage: NetworkImage('https://picsum.photos/seed/s1/100/100')),
                CircleAvatar(radius: 28, backgroundImage: NetworkImage('https://picsum.photos/seed/s2/100/100')),
                CircleAvatar(radius: 28, backgroundImage: NetworkImage('https://picsum.photos/seed/s3/100/100')),
                CircleAvatar(radius: 28, backgroundImage: NetworkImage('https://picsum.photos/seed/s4/100/100')),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
