import 'package:flutter/material.dart';
import 'package:semooorbook/advancedcategory/advancedpagecategory.dart';
import 'package:semooorbook/internetcategory/internetcategory.dart';


import '../BasicCategory/basicpage/basiccategory.dart';
import '../interectivecategory/interectivetabscategory.dart';

class AddTabDailugeBox extends StatefulWidget {
  const AddTabDailugeBox({super.key});

  @override
  State<AddTabDailugeBox> createState() => _AddTabDailugeBoxState();
}

class _AddTabDailugeBoxState extends State<AddTabDailugeBox> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showDialog(
            // barrierDismissible: false,
            barrierColor: Colors.transparent,
            context: context,
            builder: (BuildContext context) {
              return Dialog(
                insetPadding: const EdgeInsets.only(top: 80),
                elevation: 8,
                child: Container(
                  height: 900,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  child: const AddDailugeBox(),
                ),
              );
            });
      },
      child: const Icon(
        Icons.add,
        size: 30,
      ),
    );
  }
}

class AddDailugeBox extends StatefulWidget {
  const AddDailugeBox({super.key});

  @override
  State<AddDailugeBox> createState() => _AddDailugeBoxState();
}

class _AddDailugeBoxState extends State<AddDailugeBox> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 200,
          // width: MediaQuery.of(context).size.width,
          color: Colors.indigo[50],
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Padding(
                padding: EdgeInsets.only(left: 100, top: 20),
                child: Text(
                  "Recent",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
              RecentTabs(),
            ],
          ),
        ),
        TabCategories(),
      ],
    );
  }
}

class RecentTabs extends StatefulWidget {
  const RecentTabs({super.key});

  @override
  State<RecentTabs> createState() => _RecentTabsState();
}

class _RecentTabsState extends State<RecentTabs> {
  @override
  Widget build(BuildContext context) {
    var n = 5;
    var listOfContainers = <Padding>[
      const Padding(padding: EdgeInsets.all(20))
    ];
    var list = List<int>.generate(n, (i) => i + 1);
    list.forEach((i) {
      return listOfContainers.add(
        Padding(
          padding: const EdgeInsets.all(20),
          child: Container(
              width: 120,
              height: 120,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      offset: Offset(-3, 3),
                      blurRadius: 3,
                      spreadRadius: 1,
                    )
                  ],
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Icon(
                    Icons.push_pin_outlined,
                    color: Colors.black45,
                  ),
                  SizedBox(
                    child: Center(
                      child: InkWell(
                        onTap: null,
                        child: Icon(
                          Icons.av_timer_outlined,
                          size: 40,
                          color: Colors.black45,
                        ),
                      ),
                    ),
                  ),
                ],
              )),
        ),
      );
    });
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 145,
      child: ListView(
        padding: const EdgeInsets.only(left: 400),
        scrollDirection: Axis.horizontal,
        children: [
          Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: listOfContainers),
        ],
      ),
    );
  }
}

class TabCategories extends StatefulWidget {
  const TabCategories({super.key});

  @override
  State<TabCategories> createState() => _TabCategoriesState();
}

class _TabCategoriesState extends State<TabCategories>
    with TickerProviderStateMixin {
  late TabController _tabController;

  // double _height = 20;
  @override
  void initState() {
    _tabController = TabController(length: 4, vsync: this);
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Row(children: [
        RotatedBox(
          quarterTurns: 1,
          child: Container(
            height: 300,
            width: MediaQuery.of(context).size.width,
            color: Colors.indigo[50],
            child: TabBar(
                indicator: const BoxDecoration(
                  color: Colors.white,
                ),
                controller: _tabController,
                labelColor: Colors.black,
                tabs: const [
                  RotatedBox(
                    quarterTurns: 3,
                    child: Tab(
                        child: Text(
                      "Basic",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                    )),
                  ),
                  RotatedBox(
                    quarterTurns: 3,
                    child: Tab(
                        child: Text(
                      "Advanced",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                    )),
                  ),
                  RotatedBox(
                    quarterTurns: 3,
                    child: Tab(
                        child: Text(
                      "Intractive",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                    )),
                  ),
                  RotatedBox(
                      quarterTurns: 3,
                      child: Tab(
                          child: Text(
                        "Internet",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 25),
                      ))),
                ]),
          ),
        ),
        Expanded(
          child: SizedBox(
            height: 1000,
            width: MediaQuery.of(context).size.width,
            // child: Center(
            //   // child: Text('selectedIndex: $_selectedIndex'),
            // ),
            child: RotatedBox(
              quarterTurns: 1,
              child: TabBarView(controller: _tabController, children: [
                BasicCategory(),
                AdvancedCatageory(),
                IntrectiveCatageory(),
                InternetCatageory()
              ]),
            ),
          ),
        ),
      ]),
    );
  }
}
