import 'package:flutter/material.dart';

class QRCode extends StatefulWidget {
  const QRCode({super.key});

  @override
  State<QRCode> createState() => _QRCodeState();
}

class _QRCodeState extends State<QRCode> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          height: 50,
          width: 50,
          color: Colors.amber,
          child: Center(
            child: TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Qr code")),
          )),
    );
  }
}
