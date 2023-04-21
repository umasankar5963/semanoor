import 'package:flutter/material.dart';
import 'package:semooorbook/BookLeftoptions/index.dart';

import '../bookRightoptions/bookRightOptions.dart';
import '../model/bookpages.dart';
import '../pageindex/Bookpages.dart';
import '../bookRightoptions/links.dart';
import 'export.dart';
import 'mailbox.dart';

class Leftoptions extends StatefulWidget {
  const Leftoptions({
    super.key,
  });

  @override
  State<Leftoptions> createState() => _LeftoptionsState();
}

class _LeftoptionsState extends State<Leftoptions> {
  var radius = Radius.circular(10);

  get index => 0;
  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      SizedBox(
        height: 900,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(
              flex: 4,
            ),
            Container(
              height: 130,
              width: 70,
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                ),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 1,
                    spreadRadius: 1,
                  ),
                ],
              ),
              child: Column(children: const [
                Index(),
                MailBox(),
                Export(),
              ]),
            ),
            const Spacer(
              flex: 3,
            ),
            Container(
              height: 70,
              width: 70,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: radius,
                    bottomLeft: radius,
                  ),
                  boxShadow: const [
                    BoxShadow(spreadRadius: 1, color: Colors.black26),
                  ]),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () {
                        setState(() {
                          // mainpagedata[index];
                          // if (Widget.index != widget.mainpagedata.length-1) {
                          //   widget.index--;
                          // }
                        });
                      },
                      icon: Icon(
                        Icons.arrow_back_ios_sharp,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      "Back",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w700),
                    )
                  ]),
            ),
            const Spacer(),
          ],
        ),
      ),
      Bookpages(),
      BookRightOptions(),
    ]);
  }
}
