import 'dart:ui';

import 'package:flutter/material.dart';

class Index extends StatefulWidget {
  const Index({super.key});

  @override
  State<Index> createState() => _IndexState();
}

class _IndexState extends State<Index> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        BuildContext dialogContext;
        showDialog(
            barrierColor:
                const Color.fromARGB(255, 200, 199, 199).withAlpha(20),
            context: context,
            builder: (BuildContext context) {
              return Dialog(
                  insetPadding: const EdgeInsets.only(top: 40),
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  elevation: 8,
                  child: IndexPageView());
            });
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.library_books_outlined,
            size: 25,
          ),
          Text(
            "Index",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 10,
            ),
          ),
        ],
      ),
    );
  }
}

class IndexPageView extends StatefulWidget {
  const IndexPageView({super.key});

  @override
  State<IndexPageView> createState() => _IndexPageViewState();
}

class _IndexPageViewState extends State<IndexPageView>
    with TickerProviderStateMixin {
  bool isGridView = false;
  late TabController _tabController;

  bool structureview = false;
  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: 720,
        width: structureview ? 1100 : 600,
        // width: 600,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        child: Column(
          children: [
            Container(
              height: 50,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
                color: Colors.indigo[50],
              ),
              child: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Spacer(),
                          const Text("Pages",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20)),
                          const Spacer(),
                          isGridView
                              ? IconButton(
                                  onPressed: () {
                                    isGridView = false;
                                    setState(() {});
                                  },
                                  icon:
                                      Icon(Icons.format_list_bulleted_outlined),
                                )
                              : IconButton(
                                  onPressed: () {
                                    isGridView = true;
                                    setState(() {});
                                  },
                                  icon: Icon(Icons.list_outlined),
                                ),
                          IconButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            icon: Icon(Icons.close_outlined),
                          ),
                        ],
                      ),
                    ]),
              ),
            ),
            const Divider(
              height: 0.2,
            ),
            Container(
              height: 620,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
              child: TabBarView(controller: _tabController, children: [
                isGridView ? ListviewPage() : GridviewPage(),
                Center(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          'Coming Soon',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ]),
                ),
                Center(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          'Coming Soon',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ]),
                ),
              ]),
            ),
            const Divider(
              height: 0.2,
            ),
            SizedBox(
              height: 49,
              child: TabBar(
                onTap: (value) {
                  if (value == 2) {
                    structureview = true;
                  } else {
                    structureview = false;
                  }
                  setState(() {});
                },
                controller: _tabController,
                indicator: BoxDecoration(),
                labelColor: Colors.blue,
                unselectedLabelColor: Colors.black54,
                tabs: [
                  Pages(),
                  Tab(
                    child: Container(
                      alignment: Alignment.center,
                      height: 65,
                      // width: 200,
                      decoration: const BoxDecoration(
                        border: Border(
                          right: BorderSide(color: Colors.black26),
                        ),
                      ),
                      child: const Text(
                        "Structure View",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                        ),
                      ),
                    ),
                  ),
                  Tab(
                    child: Container(
                      alignment: Alignment.center,
                      height: 65,
                      child: const Text(
                        "Lesson Plan",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class GridviewPage extends StatefulWidget {
  const GridviewPage({super.key});

  @override
  State<GridviewPage> createState() => _GridviewPageState();
}

class _GridviewPageState extends State<GridviewPage> {
  // String images = 'https://picsum.photos/500/500?random $Index';
  // "https://images.unsplash.com/photo-1503454537195-1dcabb73ffb9?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8Y2hpbGR8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60";
  @override
  Widget build(BuildContext context) {
    // return GridView.count(
    //   scrollDirection: Axis.vertical,
    //   crossAxisCount: 2,
    //   childAspectRatio: 1,
    //   children: List.generate(108, (index) {
    //     return Container(
    //       child: Card(
    //         margin: EdgeInsets.only(
    //           right: 60,
    //           top: 30,
    //           bottom: 30,
    //           left: 20,
    //         ),
    //         elevation: 9,
    //       ),
    //     );
    //   }),
    // );
    return Container(
        padding: const EdgeInsets.all(30.0),
        child: GridView.builder(
          padding: const EdgeInsets.all(20.0),
          itemCount: 108,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisExtent: 200,
              crossAxisCount: 3,
              crossAxisSpacing: 30.0,
              mainAxisSpacing: 10.0),
          itemBuilder: (BuildContext context, int index) {
            return Center(
              child: Column(
                children: [
                  Card(
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: Container(
                        height: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              image: NetworkImage(
                                'https://picsum.photos/500/500?random=$index',
                              ),
                              fit: BoxFit.fill),
                        ),
                      )),
                  Text(
                    "page ${index + 1}",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                    ),
                  ),
                ],
              ),
            );
          },
        ));
  }
}

class ListviewPage extends StatefulWidget {
  const ListviewPage({super.key});

  @override
  State<ListviewPage> createState() => _ListviewPageState();
}

class _ListviewPageState extends State<ListviewPage> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ListView.separated(
          separatorBuilder: (context, index) => const Divider(
                height: 4,
                color: Colors.black38,
              ),
          itemCount: 108,
          itemBuilder: (context, index) {
            return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Card(
                        // elevation: 5,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                        child: Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              image: DecorationImage(
                                  image: NetworkImage(
                                    'https://picsum.photos/500/500?random=$index',
                                  ),
                                  fit: BoxFit.fill)),
                        ),
                      ),
                      Text(
                        "page ${index + 1}",
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ]);
          }),
    );
  }
}

class Pages extends StatefulWidget {
  const Pages({super.key});

  @override
  State<Pages> createState() => _PagesState();
}

class _PagesState extends State<Pages> {
  @override
  Widget build(BuildContext context) {
    return Tab(
      child: Container(
        alignment: Alignment.center,
        height: 65,
        // width: 200,
        decoration: const BoxDecoration(
          border: Border(
            right: BorderSide(color: Colors.black26),
          ),
        ),
        child: const Text(
          "Pages",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 17,
          ),
        ),
      ),
    );
  }
}
