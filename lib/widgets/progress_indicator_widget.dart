import 'package:flutter/material.dart';

// CircularProgressIndicator and LinearProgressIndicator: show loading.
// Without value -> spins forever. With value (0.0 to 1.0) -> shows progress.
class ProgressIndicatorWidget extends StatefulWidget {
  const ProgressIndicatorWidget({super.key});

  @override
  State<ProgressIndicatorWidget> createState() => _ProgressIndicatorWidgetState();
}

class _ProgressIndicatorWidgetState extends State<ProgressIndicatorWidget> {
  double progress = 0.3;
  bool loading = false;

  // Fake loading for 2 seconds
  Future<void> loadData() async {
    setState(() {
      loading = true;
    });
    await Future.delayed(const Duration(seconds: 2));
    setState(() {
      loading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Progress Indicator'),
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
            // 1. Spinning loader
            const Text('CircularProgressIndicator'),
            const SizedBox(height: 12),
            const CircularProgressIndicator(),
            const SizedBox(height: 30),

            // 2. Linear loader
            const Text('LinearProgressIndicator'),
            const SizedBox(height: 12),
            const LinearProgressIndicator(),
            const SizedBox(height: 30),

            // 3. Progress with a value
            Text('Progress: ${(progress * 100).toInt()}%'),
            const SizedBox(height: 12),
            LinearProgressIndicator(value: progress, minHeight: 10),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  progress = progress + 0.1;
                  if (progress > 1) {
                    progress = 0;
                  }
                });
              },
              child: const Text('Add 10%'),
            ),
            const SizedBox(height: 30),

            // 4. Show loader while loading, then show data
            ElevatedButton(
              onPressed: loadData,
              child: const Text('Load data'),
            ),
            const SizedBox(height: 12),
            loading
                ? const CircularProgressIndicator()
                : const Text('Data loaded', style: TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}
