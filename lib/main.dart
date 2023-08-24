import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyScreen(),
    );
  }
}

class MyScreen extends StatelessWidget {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Text Field aur Button Example'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _controller,
              decoration: InputDecoration(
                labelText: 'Text likhein',
              ),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                String enteredText = _controller.text;
                // Aap enteredText ka use karke kuch aur actions perform kar sakte hain.
                print('Entered text: $enteredText');
              },
              child: Text('Button'),
            ),
          ],
        ),
      ),
    );
  }
}
