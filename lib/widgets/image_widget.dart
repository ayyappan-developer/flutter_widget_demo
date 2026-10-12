import 'package:flutter/material.dart';

// Image: Image.network (from internet) and Image.asset (inside the app).
// Asset images must be added in pubspec.yaml:
//   flutter:
//     assets:
//       - assets/images/
class ImageWidget extends StatelessWidget {
  const ImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Image'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 1. Image from the internet
            const Text('1. Image.network', style: TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            Image.network(
              'https://picsum.photos/seed/ksr/600/400',
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 24),

            // 2. Image from assets folder
            const Text('2. Image.asset', style: TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            Image.asset('assets/images/logo.png', width: 120),
            const SizedBox(height: 24),

            // 3. Rounded corner image
            const Text('3. Rounded image (ClipRRect)', style: TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network(
                'https://picsum.photos/seed/flutter/600/400',
                height: 150,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
