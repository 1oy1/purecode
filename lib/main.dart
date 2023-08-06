import 'package:flutter/material.dart';
import 'contact.dart';

void main() {
  runApp(
    MaterialApp(
      home: ContactUsPage(),
    ),
  );
}


class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text("hello");
  }
}