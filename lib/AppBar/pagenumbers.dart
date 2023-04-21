import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PageNumbers extends StatefulWidget {
  const PageNumbers({super.key});

  @override
  State<PageNumbers> createState() => _PageNumbersState();
}

class _PageNumbersState extends State<PageNumbers> {
  // final TextEditingController _controller = TextEditingController();
  int startpagecount = 1;
  int pagecount = 1;
  void increment() {
    setState(() {
      startpagecount++;
    });
  }

  void decrement() {
    setState(() {
      // startpagecount = startpagecount < 1 ? startpagecount : pagecount--;
      startpagecount = max(startpagecount - 1, 1);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 25,
      // width: 35,
      decoration: BoxDecoration(
        // color: Colors.blue,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Row(
        children: [
          Container(
            width: 40,
            height: 25,
            margin: EdgeInsets.symmetric(horizontal: 10),
            padding: EdgeInsets.all(1),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(3), color: Colors.white),
            child: Text(
              startpagecount.toString(),
              // controller: _controller,
              // keyboardType: TextInputType.numberWithOptions(
              //       decimal: false, signed: false),
              // inputFormatters: <TextInputFormatter>[
              //   WhitelistingTextInputFormatter.digitsOnly
              // ],
            ),
          ),
          Row(children: [
            Column(children: [
              InkWell(
                  onTap: () {
                    increment();
                  },
                  child: Icon(
                    Icons.arrow_drop_up,
                    color: Colors.black,
                    size: 16,
                  )),
              InkWell(
                  onTap: () {
                    decrement();
                  },
                  child: Icon(
                    Icons.arrow_drop_down,
                    color: Colors.black,
                    size: 16,
                  )),
            ]),
          ]),
          Text(
            "/" "108",
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 16, color: Colors.blue),
          ),
        ],
      ),
    );
  }
}
