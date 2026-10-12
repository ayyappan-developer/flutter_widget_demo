import 'package:flutter/material.dart';

// TextField: lets the user type text.
// TextEditingController reads what was typed. Always dispose() it.
class TextFieldWidget extends StatefulWidget {
  const TextFieldWidget({super.key});

  @override
  State<TextFieldWidget> createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  TextEditingController nameController = TextEditingController();
  String typedText = '';
  String liveText = '';

  @override
  void dispose() {
    nameController.dispose(); // free the controller when screen closes
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TextField'),
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
          children: [
            // 1. TextField with controller
            TextField(
              controller: nameController,
              decoration: const InputDecoration(
                labelText: 'Name',
                hintText: 'Enter your name',
                prefixIcon: Icon(Icons.person),
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 12),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  typedText = nameController.text;
                });
              },
              child: const Text('Show Name'),
            ),
            Text('Hello $typedText', style: const TextStyle(fontSize: 20)),
            const SizedBox(height: 24),

            // 2. onChanged - updates on every key press
            TextField(
              onChanged: (value) {
                setState(() {
                  liveText = value;
                });
              },
              decoration: const InputDecoration(
                labelText: 'Type here (live)',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 8),
            Text('You typed: $liveText'),
            const SizedBox(height: 24),

            // 3. Password field
            const TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                prefixIcon: Icon(Icons.lock),
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 24),

            // 4. Number keyboard
            const TextField(
              keyboardType: TextInputType.phone,
              maxLength: 10,
              decoration: InputDecoration(
                labelText: 'Mobile number',
                prefixIcon: Icon(Icons.phone),
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 12),

            // 5. Multi-line
            const TextField(
              maxLines: 4,
              decoration: InputDecoration(
                labelText: 'Address',
                border: OutlineInputBorder(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
