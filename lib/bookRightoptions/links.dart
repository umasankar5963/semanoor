import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'linksdailugebox.dart';

class Links extends StatefulWidget {
  const Links({super.key});

  @override
  State<Links> createState() => _LinksState();
}

class _LinksState extends State<Links> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showDialog(
            barrierColor: Colors.transparent,
            context: context,
            builder: (BuildContext context) {
              return Dialog(
                insetPadding: EdgeInsets.only(top: 80),
                backgroundColor: Colors.transparent,
                child: SizedBox(
                  height: MediaQuery.of(context).size.height,
                  width: 1100,
                  child: PdfPageLinks(),
                ),
              );
            });
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: const [
          Icon(
            Icons.link_outlined,
            size: 25,
          ),
          Text(
            textAlign: TextAlign.center,
            "Links",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}

// class LinksSize extends StatefulWidget {
//   const LinksSize({super.key});

//   @override
//   State<LinksSize> createState() => _LinksSizeState();
// }

// class _LinksSizeState extends State<LinksSize> {
//   @override
//   Widget build(BuildContext context) {
//     return
//      PdfPageLinks();
//   }
// }

const ballRadius = 4.5;

class PdfPageLinks extends StatefulWidget {
  const PdfPageLinks({super.key});

  @override
  State<PdfPageLinks> createState() => _PdfPageLinksState();
}

class _PdfPageLinksState extends State<PdfPageLinks> {
  double _x = 500;
  double _y = 500;
  // double _size = 120;

  double _height = 80;
  double _width = 120;

  final double _aspectRatio = 200 / 300;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 200,
      top: 200,
      child: Stack(
        fit: StackFit.loose,
        clipBehavior: Clip.hardEdge,
        children: <Widget>[
          Positioned(
            top: _y,
            left: _x,
            child: GestureDetector(
              onPanUpdate: (DragUpdateDetails details) {
                // setState(() {
                //   Size mediaSize = MediaQuery.of(context).size;
                //   double tempx = _x + details.delta.dx;
                //   if (tempx >= 0 && tempx <= mediaSize.width) {
                //     _x = tempx;
                //   }
                //   _y += details.delta.dy;
                // });
                setState(() {
                  Size mediaSize = MediaQuery.of(context).size;
                  double tempx = _x + details.delta.dx;
                  if (tempx >= 0 && tempx <= mediaSize.width) {
                    _x = tempx;
                  }
                  _y += details.delta.dy;
                  // if (_height >= 0 && _width <= mediaSize.width) {
                  //   _height = _height == 120 ? 50 : 120;
                  // }
                  // _height = mediaSize.width;
                });
              },
              child: Row(
                children: [
                  Container(
                    height: _height,
                    width: _width,
                    constraints: BoxConstraints(minWidth: 50, minHeight: 50),
                    // color: Colors.transparent,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.blue, width: 2.0),
                      color: Colors.transparent,
                    ),
                  ),
                  Container(
                    height: 2,
                    width: 50,
                    color: Colors.blue,
                  ),
                  Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(color: Colors.blue, width: 2.0),
                    ),
                    child: LinksDailugeBox(),
                  ),
                ],
              ),
            ),
          ),

          // top left
          Positioned(
            top: _y - ballRadius,
            left: _x - ballRadius,
            child: Ball(
              onDragStart: () {},
              onDrag: (double dx, double dy) {
                var newWidth = _width - dx;
                var newHeight = newWidth * _aspectRatio;
                setState(() {
                  _y = _y + (_height - newHeight);
                  _x = _x + dx;
                  _width = newWidth;
                  _height = newHeight;
                  _y = _y - dy;
                  _x = _x - dx;
                });
              },
              onDragEnd: () {},
            ),
          ),

          // top middle
          Positioned(
            top: _y - ballRadius,
            left: _x + _width / 2 - ballRadius,
            child: Ball(
              onDragStart: () {},
              onDrag: (double dx, double dy) {
                var newWidth = _width - dx;
                var newHeight = newWidth - _aspectRatio;
                setState(() {
                  _y = _y + (_height - newHeight);
                  _x = _x + (_width - newWidth);
                  _width = newWidth;
                  _height = newHeight;
                });
              },
              onDragEnd: () {},
            ),
          ),

          // top right
          Positioned(
            top: _y - ballRadius,
            left: _x + _width - ballRadius,
            child: Ball(
              onDragStart: () {},
              onDrag: (double dx, double dy) {
                var newWidth = _width + dx;
                var newHeight = newWidth * _aspectRatio;

                setState(() {
                  _width = newWidth;
                  _height = newHeight;
                  // _y = _y - dy;
                  // _x = _x - dx;
                });
              },
              onDragEnd: () {},
            ),
          ),

          // middle left
          Positioned(
            top: _y + _height / 2 - ballRadius,
            left: _x - ballRadius,
            child: Ball(
              onDragStart: () {},
              onDrag: (double dx, double dy) {
                var newWidth = _width - dx;
                var newHeight = newWidth * _aspectRatio;
                setState(() {
                  _y = _y + (_height - newHeight);
                  _x = _x + (_width - newWidth);
                  _width = newWidth;
                  _height = newHeight;
                });
              },
              onDragEnd: () {},
            ),
          ),

          // middle right
          Positioned(
            top: _y + _height / 2 - ballRadius,
            left: _x + _width - ballRadius,
            child: Ball(
              onDragStart: () {},
              onDrag: (double dx, double dy) {
                var newWidth = _width + dx;
                var newHeight = newWidth * _aspectRatio;
                setState(() {
                  _y = _y + (_height - newHeight);
                  _x = _x + (_width - newWidth);
                  _width = newWidth;
                  _height = newHeight;
                });
              },
              onDragEnd: () {},
            ),
          ),

          // bottom left
          Positioned(
            top: _y + _height - ballRadius,
            left: _x - ballRadius,
            child: Ball(
              onDragStart: () {},
              onDrag: (double dx, double dy) {
                var newWidth = _width + dy;
                var newHeight = newWidth * _aspectRatio;

                setState(() {
                  _width = newWidth;
                  _height = newHeight;
                });
              },
              onDragEnd: () {},
            ),
          ),

          // bottom Center
          Positioned(
            top: _y + _height - ballRadius,
            left: _x + _width / 2 - ballRadius,
            child: Ball(
              onDragStart: () {},
              onDrag: (double dx, double dy) {
                var newWidth = _width + dx;
                var newHeight = newWidth * _aspectRatio;
                setState(() {
                  _y = _y + (_height - newHeight);
                  _x = _x + (_width - newWidth);
                  _width = newWidth;
                  _height = newHeight;
                });
              },
              onDragEnd: () {},
            ),
          ),

          // bottom right
          Positioned(
            top: _y + _height - ballRadius,
            left: _x + _width - ballRadius,
            child: Ball(
              onDragStart: () {},
              onDrag: (double dx, double dy) {
                var newWidth = _width + dx;
                var newHeight = newWidth * _aspectRatio;

                setState(() {
                  _width = newWidth;
                  _height = newHeight;
                  _y = _y - dy;
                  _x = _x - dx;
                });
              },
              onDragEnd: () {},
            ),
          ),
        ],
      ),
    );
  }
}

class Ball extends StatefulWidget {
  final Function onDragStart;
  final Function onDrag;
  final Function onDragEnd;

  const Ball(
      {super.key,
      required this.onDragStart,
      required this.onDrag,
      required this.onDragEnd});

  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {
  late double initX;

  void _onDragStart(DragStartDetails details) {
    widget.onDragStart();
  }

  void _onDragUpdate(DragUpdateDetails details) {
    widget.onDrag(details.delta.dx, details.delta.dy);
  }

  void _onDragEnd(DragEndDetails details) {
    widget.onDragEnd();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onPanStart: _onDragStart,
      onPanUpdate: _onDragUpdate,
      onPanEnd: _onDragEnd,
      child: Container(
        height: 2 * ballRadius,
        width: 2 * ballRadius,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(ballRadius),
          border: Border.all(
            width: 2,
            color: Colors.blue,
          ),
        ),
      ),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DoubleProperty('X Cordinates', initX));
  }
}
