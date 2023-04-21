import 'package:flutter/material.dart';

class AdvancedPage extends StatefulWidget {
  const AdvancedPage({super.key});

  @override
  State<AdvancedPage> createState() => _AdvancedPageState();
}

class _AdvancedPageState extends State<AdvancedPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text("Advanced page")),
    );
  }
}
