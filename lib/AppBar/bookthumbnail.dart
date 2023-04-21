import 'dart:math';

import 'package:flutter/material.dart';

class BookThumbnail extends StatefulWidget {
  const BookThumbnail({super.key});

  @override
  State<BookThumbnail> createState() => _BookThumbnailState();
}

class _BookThumbnailState extends State<BookThumbnail>
    with TickerProviderStateMixin {
  late TabController _tabController;
  var radius = Radius.circular(10);

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
        // mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            child: Image.network(
              "http://store-images.s-microsoft.com/image/apps.17647.14378347645601591.5bae09d0-9b15-4132-947c-f44bf629586a.ed0b76bb-83bb-4a96-9b30-86855ff61049",
              height: 40,
              width: 40,
              // fit: BoxFit.fill,
              // gaplessPlayback: false,
              // alignment: Alignment.center,
            ),
          ),
          TextButton(
            onPressed: () {
              showDialog(
                  barrierDismissible: true,
                  // barrierColor: Colors.grey.shade100,
                  context: context,
                  builder: (BuildContext context) {
                    return Align(
                      alignment: Alignment.topCenter,
                      child: Material(
                        child: Container(
                          margin: EdgeInsets.all(20),
                          height: 500,
                          width: 400,
                          // color: Colors.green,
                          color: Colors.white,

                          child: ListView(
                              // crossAxisAlignment: CrossAxisAlignment.stretch,
                              // mainAxisAlignment: MainAxisAlignment.center,
                              // verticalDirection: VerticalDirection.down,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        color: Colors.black,
                                        boxShadow: [
                                          BoxShadow(
                                            color:
                                                Colors.black.withOpacity(0.1),
                                            blurRadius: 1,
                                            spreadRadius: 2,
                                          ),
                                        ],
                                      ),
                                      margin: EdgeInsets.all(20),
                                      height: 130,
                                      width: 100,
                                      child: Image.network(
                                        "data:image/jpeg;base64,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",
                                        width: 80,
                                        height: 100,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.only(
                                        top: 5,
                                      ),
                                      height: 180,
                                      width: 200,
                                      // color: Colors.green,
                                      child: Column(
                                          // mainAxisAlignment:
                                          //     MainAxisAlignment.end,
                                          // // crossAxisAlignment:
                                          //     CrossAxisAlignment.end,
                                          children: [
                                            Row(
                                              // crossAxisAlignment:
                                              //     CrossAxisAlignment.end,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  "....الرياضيات",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 20),
                                                ),
                                                Spacer(),
                                                Icon(Icons.share_outlined),
                                              ],
                                            ),
                                            Spacer(),
                                            Text(
                                              " لرياضيت",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 15),
                                            ),
                                            Text(
                                              "108 Pages",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 20),
                                            ),
                                          ]),
                                    ),
                                  ],
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(radius),
                                    border: Border.all(
                                      color: Colors.blue,
                                      width: 3,
                                    ),
                                  ),
                                  height: 40,
                                  // width: 500,
                                  child: TabBar(
                                    controller: _tabController,
                                    indicator: ShapeDecoration(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(radius),
                                      ),
                                      color: Colors.blue,
                                    ),
                                    labelColor: Colors.white,
                                    unselectedLabelColor: Colors.black,
                                    tabs: [
                                      Tab(
                                        height: 25,
                                        text: 'Details',
                                      ),
                                      Tab(
                                        height: 25,
                                        text: 'Features',
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 10),
                                  // color: Colors.red,
                                  height: 270,

                                  // MediaQuery.of(context).size.height *
                                  //     0.28,
                                  // width: 520,
                                  child: TabBarView(
                                    controller: _tabController,
                                    children: [
                                      // first tab bar view widget
                                      Center(
                                        child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Divider(
                                                color: Color.fromARGB(
                                                    255, 144, 139, 139),
                                              ),
                                              Text(
                                                "About the Book",
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              Text(
                                                "الرياضيات - 1444 - الصف الثالث الابتدائي - الفصل الدراسي الاول",
                                                style: TextStyle(
                                                    color: Colors.black),
                                              ),
                                              Divider(
                                                color: Color.fromARGB(
                                                    255, 144, 139, 139),
                                              ),
                                              Text(
                                                "Information",
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Container(
                                                      // color: Colors.green,
                                                      height: 150,
                                                      margin: EdgeInsets.only(
                                                          left: 50, top: 20),
                                                      child: Column(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Text(
                                                            "Language",
                                                            style: TextStyle(
                                                                fontSize: 20,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                color: Colors
                                                                    .black38),
                                                          ),
                                                          Text(
                                                            "Category",
                                                            style: TextStyle(
                                                                fontSize: 20,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                color: Colors
                                                                    .black38),
                                                          ),
                                                          Text(
                                                            "Added on",
                                                            style: TextStyle(
                                                                fontSize: 20,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                color: Colors
                                                                    .black38),
                                                          ),
                                                          Text(
                                                            "Size",
                                                            style: TextStyle(
                                                                fontSize: 20,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                color: Colors
                                                                    .black38),
                                                          ),
                                                          Text(
                                                            "Store",
                                                            style: TextStyle(
                                                                fontSize: 20,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                color: Colors
                                                                    .black38),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Container(
                                                      // color: Colors.green,
                                                      height: 150,
                                                      margin: EdgeInsets.only(
                                                          left: 50, top: 20),
                                                      child: Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Text(
                                                            "Arabic",
                                                            style: TextStyle(
                                                                fontSize: 20,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                color: Colors
                                                                    .black),
                                                          ),
                                                          Text(
                                                            "EBE",
                                                            style: TextStyle(
                                                                fontSize: 20,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                color: Colors
                                                                    .black),
                                                          ),
                                                          Text(
                                                            "Wed Nov 16 2022",
                                                            style: TextStyle(
                                                                fontSize: 20,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                color: Colors
                                                                    .black),
                                                          ),
                                                          Text(
                                                            "40.9 MB",
                                                            style: TextStyle(
                                                                fontSize: 20,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                color: Colors
                                                                    .black),
                                                          ),
                                                          Text(
                                                            "View content on Library",
                                                            style: TextStyle(
                                                                fontSize: 20,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                color: Colors
                                                                    .blue),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ]),
                                            ]),
                                      ),

                                      Center(
                                        child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: [
                                              Text(
                                                'Features on this content will be activated with Smart book features subscription or redeems. You can check user features to see which features are activated in your account.',
                                                style: TextStyle(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                              Text(
                                                "Go to User Features",
                                                style: TextStyle(
                                                  fontSize: 18,
                                                  color: Colors.blue,
                                                ),
                                              )
                                            ]),
                                      ),
                                    ],
                                  ),
                                ),
                              ]),
                        ),
                      ),
                    );
                  });
            },
            child: Text(
              'سمانور',
              style: TextStyle(
                  color: Colors.blue,
                  fontSize: 25,
                  fontWeight: FontWeight.w700),
            ),
          ),
        ]);
  }
}

class DailugeBox extends StatefulWidget {
  const DailugeBox({super.key});

  @override
  State<DailugeBox> createState() => _DailugeBoxState();
}

class _DailugeBoxState extends State<DailugeBox> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
