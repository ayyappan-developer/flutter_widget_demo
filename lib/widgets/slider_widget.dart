import 'package:flutter/material.dart';

// Slider: pick a number by sliding. Value is a double between min and max.
class SliderWidget extends StatefulWidget {
  const SliderWidget({super.key});

  @override
  State<SliderWidget> createState() => _SliderWidgetState();
}

class _SliderWidgetState extends State<SliderWidget> {
  double fontSize = 20;
  double volume = 5;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Slider'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            // 1. Slider changes the text size
            const Text('Text size'),
            Slider(
              value: fontSize,
              min: 10,
              max: 60,
              onChanged: (value) {
                setState(() {
                  fontSize = value;
                });
              },
            ),
            Text('Hello KSR', style: TextStyle(fontSize: fontSize)),
            Text('Size: ${fontSize.toInt()}'),
            const Divider(height: 40),

            // 2. Slider with divisions and label
            const Text('Volume'),
            Row(
              children: [
                const Icon(Icons.volume_down),
                Expanded(
                  child: Slider(
                    value: volume,
                    min: 0,
                    max: 10,
                    divisions: 10,
                    label: volume.toInt().toString(),
                    onChanged: (value) {
                      setState(() {
                        volume = value;
                      });
                    },
                  ),
                ),
                const Icon(Icons.volume_up),
              ],
            ),
            Text('Volume: ${volume.toInt()}'),
          ],
        ),
      ),
    );
  }
}
