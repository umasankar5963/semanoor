import 'package:flutter/material.dart';

class AudioGallery extends StatefulWidget {
  const AudioGallery({super.key});

  @override
  State<AudioGallery> createState() => _AudioGalleryState();
}

class _AudioGalleryState extends State<AudioGallery> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          height: 50,
          width: 50,
          color: Colors.greenAccent,
          child: Center(
            child: TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("AudioGallery")),
          )),
    );
  }
}
