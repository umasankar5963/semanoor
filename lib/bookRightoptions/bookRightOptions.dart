import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:semooorbook/bookRightoptions/draw.dart';
import 'package:semooorbook/bookRightoptions/links.dart';
import 'package:semooorbook/bookRightoptions/notes.dart';
import 'package:semooorbook/bookRightoptions/print.dart';

class BookRightOptions extends StatefulWidget {
  const BookRightOptions({super.key});

  @override
  State<BookRightOptions> createState() => _BookRightOptionsState();
}

class _BookRightOptionsState extends State<BookRightOptions> {
  var radius = const Radius.circular(10);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 900,
      child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Spacer(
              flex: 2,
            ),
            // scrollDirection: Axis.vertical,
            Container(
              width: 70,
              height: MediaQuery.of(context).size.height / 1.50,
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.only(topRight: radius, bottomRight: radius),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 1,
                    spreadRadius: 1,
                  ),
                ],
              ),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Padding(padding: EdgeInsets.all(5)),
                    Notes(),
                    Padding(padding: EdgeInsets.all(5)),
                    Draw(),
                    Padding(padding: EdgeInsets.all(5)),
                    Icon(
                      Icons.bookmark_add_outlined,
                      size: 25,
                      color: Colors.black38,
                    ),
                    Text(
                      "Mark",
                      style: TextStyle(fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                    Padding(padding: EdgeInsets.all(5)),
                    Links(),
                    Padding(padding: EdgeInsets.all(5)),
                    Icon(
                      Icons.important_devices_outlined,
                      size: 25,
                      color: Colors.black38,
                    ),
                    Text(
                      "Import",
                      style: TextStyle(fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                    Padding(padding: EdgeInsets.all(5)),
                    Print(),
                    Padding(padding: EdgeInsets.all(5)),
                    Icon(
                      Icons.perm_device_information_outlined,
                      color: Colors.black38,
                      size: 25,
                    ),
                    Text(
                      "Mini",
                      style: TextStyle(fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                    Padding(padding: EdgeInsets.all(5)),
                    Icon(
                      Icons.phone_outlined,
                      color: Colors.black38,
                      size: 25,
                    ),
                    Text(
                      "Meet",
                      style: TextStyle(fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                    Padding(padding: EdgeInsets.all(5)),
                    Icon(
                      Icons.fullscreen,
                      color: Colors.black38,
                      size: 25,
                    ),
                    Text(
                      "Full",
                      style: TextStyle(fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                    Padding(padding: EdgeInsets.all(5)),
                    Icon(
                      Icons.stacked_bar_chart_sharp,
                      color: Colors.black38,
                      size: 25,
                    ),
                    Text(
                      "Statistics",
                      style: TextStyle(fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                    Padding(padding: EdgeInsets.all(5)),
                    Icon(
                      Icons.settings_outlined,
                      color: Colors.black38,
                      size: 25,
                    ),
                    Text(
                      "Colab",
                      style: TextStyle(fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
            const Spacer(),
            Container(
              margin: const EdgeInsets.only(top: 55, left: 2),
              height: 70,
              width: 70,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.only(topRight: radius, bottomRight: radius),
                  boxShadow: const [
                    BoxShadow(spreadRadius: 1, color: Colors.black26),
                  ]),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    IconButton(
                      onPressed: null,
                      icon: Icon(
                        Icons.arrow_forward_ios_sharp,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      "Next",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w700),
                    )
                  ]),
            ),
            const Spacer(
              flex: 3,
            ),
          ]),
    );
  }
}
