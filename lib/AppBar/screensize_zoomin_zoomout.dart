import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ScreenSizeZoomIn extends StatefulWidget {
  const ScreenSizeZoomIn({super.key});

  @override
  State<ScreenSizeZoomIn> createState() => _ScreenSizeZoomInState();
}

class _ScreenSizeZoomInState extends State<ScreenSizeZoomIn> {
  int count = 100;
  int startCount = 25;
  void increment() {
    setState(() {
      count = count + startCount;
    });
  }

  void decrement() {
    setState(() {
      count = count - startCount;
      // count = max(0, 25);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: 20,

      // height: 20,
      padding: EdgeInsets.all(3),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Row(
        children: [
          InkWell(
              onTap: () {
                decrement();
              },
              child: Icon(
                Icons.remove,
                color: Colors.black,
                size: 16,
              )),
          Container(
              height: 15,
              width: 1,
              margin: EdgeInsets.only(left: 10, right: 10),
              color: Colors.black),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            padding: EdgeInsets.all(1),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(3), color: Colors.white),
            child: Text(
              count.toString(),
              style: TextStyle(color: Colors.black, fontSize: 16),
            ),
          ),
          Container(
              height: 15,
              width: 1,
              margin: EdgeInsets.only(left: 10, right: 10),
              color: Colors.black),
          InkWell(
              onTap: () {
                increment();
              },
              child: Icon(
                Icons.add,
                color: Colors.black,
                size: 16,
              )),
        ],
      ),
    );
  }
}
