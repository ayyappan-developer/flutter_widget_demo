import 'package:flutter/material.dart';

// Text: shows words on the screen.
class TextWidget extends StatelessWidget {
  const TextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Text'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 1. Simple text
            Text('Hello KSR'),
            SizedBox(height: 16),

            // 2. Bigger, bold text
            Text(
              'Big and Bold',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),

            // 3. Colored and italic text
            Text(
              'Blue Italic Text',
              style: TextStyle(
                fontSize: 20,
                color: Colors.blue,
                fontStyle: FontStyle.italic,
              ),
            ),
            SizedBox(height: 16),

            // 4. Underline and letter spacing
            Text(
              'Underline',
              style: TextStyle(
                fontSize: 20,
                decoration: TextDecoration.underline,
                letterSpacing: 4,
              ),
            ),
            SizedBox(height: 16),

            // 5. Long text: maxLines + overflow
            Text(
              'This is a very long sentence. It will be cut after two lines '
              'and show three dots at the end because of maxLines and overflow. '
              'Students can try removing maxLines to see the full text.',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            SizedBox(height: 16),

            // 6. Center aligned text
            SizedBox(
              width: double.infinity,
              child: Text(
                'Center aligned',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
