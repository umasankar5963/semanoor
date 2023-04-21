import 'package:flutter/material.dart';

class ImageGallery extends StatefulWidget {
  const ImageGallery({super.key});

  @override
  State<ImageGallery> createState() => _ImageGalleryState();
}

class _ImageGalleryState extends State<ImageGallery> {
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
                child: Text("Image galeery")),
          )),
    );
  }
}
