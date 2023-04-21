import 'package:flutter/material.dart';

class VideoGallery extends StatefulWidget {
  const VideoGallery({super.key});

  @override
  State<VideoGallery> createState() => _VideoGalleryState();
}

class _VideoGalleryState extends State<VideoGallery> {
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
