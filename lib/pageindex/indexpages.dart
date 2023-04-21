import 'dart:developer';

import 'package:flutter/material.dart';


class IndexPages extends StatefulWidget {
  const IndexPages({super.key});

  @override
  State<IndexPages> createState() => _IndexPagesState();
}

class _IndexPagesState extends State<IndexPages> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showDialog(
            barrierDismissible: true,
            barrierColor: Color.fromARGB(255, 200, 199, 199).withAlpha(20),
            context: context,
            builder: (BuildContext context) {
              return Container(
                margin: EdgeInsets.only(top: 80),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 150),
                      child: ClipPath(
                        clipper: TriangleClipper(),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Colors.white)),
                          width: 80,
                          height: 20,
                        ),
                      ),
                    ),
                    Dialog(
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      elevation: 8,
                      insetPadding: EdgeInsets.only(left: 40),
                      alignment: Alignment.topLeft,
                      child: Container(
                        height: 500,
                        width: 100,

                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                          color: Colors.white,
                        ),

                        // color: Colors.green,

                        child: ListView(children: [
                          Container(
                            height: 50,
                            width: 500,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                              color: Colors.white,
                            ),
                            child: const Center(
                              child: Text(
                                "Pages",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                            ),
                          ),
                          const Divider(
                            height: 4,
                            color: Colors.black38,
                          ),
                          Container(
                            height: 440,
                            width: 275,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                              color: Colors.white,
                            ),
                            child: ListView.separated(
                                separatorBuilder: (context, index) =>
                                    const Divider(
                                      height: 4,
                                      color: Colors.black38,
                                    ),
                                itemCount: 108,
                                itemBuilder: (context, index) {
                                  // final item = items[index + 1];
                                  return ListTile(
                                    title: Text(
                                      "page ${index + 1}",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  );
                                }),
                          ),
                        ]),
                      ),
                    ),
                  ],
                ),
              );
            });
      },
      child: Container(
        height: 30,
        width: 120,
        // padding: EdgeInsets.all(10),
        margin: EdgeInsets.only(left: 35),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 1,
              spreadRadius: 1,
            ),
          ],
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.home_outlined),
                Text(
                  "pages",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
                Icon(
                  Icons.keyboard_arrow_down,
                  color: Colors.black,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class TriangleClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();

    path.moveTo(0.0, size.height);

    path.lineTo(size.width * .5, 0);

    path.lineTo(size.width, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(TriangleClipper oldClipper) => false;
}
