

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';



import 'BookLeftoptions/bookLeftOptions.dart';
import 'pageindex/indexpages.dart';
import 'AppBar/bookthumbnail.dart';
import 'AppBar/pagenumbers.dart';
import 'AppBar/screensize_zoomin_zoomout.dart';
import 'pageindex/addTabDailugebox.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Semanoor',
      scrollBehavior: const ScrollBehavior()
          .copyWith(dragDevices: {PointerDeviceKind.mouse}),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: 'Semanoor'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // int _counter = 0;
  // void _incrementCounter() {
  //   setState(() {
  //     _counter++;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo[50],
      body: ScrollConfiguration(
        behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
        child: ListView(
          physics: const NeverScrollableScrollPhysics(),
          children: [
            Column(
              children: [
                Row(
                  children: [
                    Row(children: const [
                      Icon(Icons.arrow_back_ios_new),
                      Text(
                        "Home",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                    ]),
                    const Spacer(flex: 5),
                    const BookThumbnail(),
                    const Spacer(
                      flex: 2,
                    ),
                    const PageNumbers(),
                    const Spacer(),
                    const Icon(Icons.search_outlined),
                    const ScreenSizeZoomIn(),
                    const Icon(Icons.filter_alt_outlined),
                    const Spacer(),
                  ],
                ),
                ScrollConfiguration(
                  behavior: ScrollConfiguration.of(context)
                      .copyWith(scrollbars: false),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Container(
                      color: Colors.white,
                      height: 40,
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          IndexPages(),
                          AddTabDailugeBox(),
                          // Expanded(
                          //   child: SizedBox(
                          //     // Horizontal ListView
                          //     height: 30,
                          //     width: MediaQuery.of(context).size.width,

                          //     child: ListView.builder(
                          //       itemCount: _counter,
                          //       scrollDirection: Axis.horizontal,
                          //       itemBuilder: (context, int index) {
                          //         return Padding(
                          //           padding: const EdgeInsets.only(left: 10),
                          //           child: Container(
                          //             height: 50,
                          //             width: 100,
                          //             decoration: const BoxDecoration(
                          //               color: Colors.blue,
                          //               borderRadius: BorderRadius.all(
                          //                   Radius.circular(10)),
                          //             ),
                          //             alignment: Alignment.center,
                          //             child: Text(
                          //               "$index",
                          //               style: const TextStyle(
                          //                 fontWeight: FontWeight.bold,
                          //                 fontSize: 17,
                          //               ),
                          //             ),
                          //           ),
                          //         );
                          //       },
                          //     ),
                          //   ),
                          // ),
                          // IconButton(
                          //   onPressed: _incrementCounter,
                          //   icon: const Icon(Icons.add),
                          // ),
                        ],
                      ),
                    ),
                  ),
                ),
                Leftoptions(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
