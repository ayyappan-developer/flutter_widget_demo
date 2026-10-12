import 'package:flutter/material.dart';

// GestureDetector: makes ANY widget detect tap, double tap, long press.
// InkWell: same idea, but shows a ripple (splash) effect.
class GestureDetectorWidget extends StatefulWidget {
  const GestureDetectorWidget({super.key});

  @override
  State<GestureDetectorWidget> createState() => _GestureDetectorWidgetState();
}

class _GestureDetectorWidgetState extends State<GestureDetectorWidget> {
  String message = 'Try tap, double tap and long press';
  Color boxColor = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GestureDetector & InkWell'),
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
            Text(message, style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 20),

            // 1. GestureDetector
            GestureDetector(
              onTap: () {
                setState(() {
                  message = 'Tapped';
                  boxColor = Colors.green;
                });
              },
              onDoubleTap: () {
                setState(() {
                  message = 'Double tapped';
                  boxColor = Colors.orange;
                });
              },
              onLongPress: () {
                setState(() {
                  message = 'Long pressed';
                  boxColor = Colors.red;
                });
              },
              child: Container(
                width: 200,
                height: 200,
                color: boxColor,
                child: const Center(
                  child: Text('GestureDetector', style: TextStyle(color: Colors.white)),
                ),
              ),
            ),
            const SizedBox(height: 30),

            // 2. InkWell - ripple effect (needs a Material parent)
            Material(
              color: Colors.purple.shade100,
              borderRadius: BorderRadius.circular(12),
              child: InkWell(
                borderRadius: BorderRadius.circular(12),
                onTap: () {
                  setState(() {
                    message = 'InkWell tapped';
                  });
                },
                child: const Padding(
                  padding: EdgeInsets.all(24),
                  child: Text('InkWell (see the ripple)'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
