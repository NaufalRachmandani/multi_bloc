import 'package:flutter/material.dart';

class DraftPage extends StatelessWidget {
  final Color backgroundColor;
  final Widget body;

  const DraftPage({Key? key, required this.body, this.backgroundColor = Colors.pink}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: backgroundColor,
        title: const Text("Demo Multi Bloc with multipage"),
      ),
      body: body,
    );
  }
}
