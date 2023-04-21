import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Draw extends StatefulWidget {
  const Draw({super.key});

  @override
  State<Draw> createState() => _DrawState();
}

class _DrawState extends State<Draw> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showDialog(
            barrierColor: Colors.grey.withAlpha(65),
            context: context,
            builder: (BuildContext context) {
              return Dialog(
                child: Container(
                  height: 730,
                  width: 700,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  child: Text("djks"),
                ),
              );
            });
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: const [
          Icon(
            Icons.draw_outlined,
            size: 25,
          ),
          Text(
            textAlign: TextAlign.center,
            "Draw",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
