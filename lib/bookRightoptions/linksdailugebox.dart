import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'mediaLinks.dart';

class LinksDailugeBox extends StatefulWidget {
  const LinksDailugeBox({super.key});

  @override
  State<LinksDailugeBox> createState() => _LinksDailugeBoxState();
}

class _LinksDailugeBoxState extends State<LinksDailugeBox>
    with TickerProviderStateMixin {
  Radius get radius => Radius.circular(10);
  late TabController _tabController;
  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showDialog(
            barrierColor: Colors.transparent,
            barrierDismissible: true,
            // barrierColor: Colors.grey.shade100,
            context: context,
            builder: (BuildContext context) {
              return Align(
                alignment: Alignment.center,
                child: Material(
                  color: Colors.transparent,
                  child: Container(
                    height: 600,
                    width: 500,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(radius),
                        color: Colors.white),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          TabBar(
                              controller: _tabController,
                              labelColor: Colors.blue,
                              unselectedLabelColor: Colors.black,
                              tabs: [
                                const Tab(
                                  child: Text(
                                    "Links",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15),
                                  ),
                                ),
                                Tab(
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      const Spacer(),
                                      const Text(
                                        "Styles",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15),
                                      ),
                                      const Spacer(),
                                      IconButton(
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                        icon: const Icon(Icons.close_outlined),
                                      ),
                                    ],
                                  ),
                                ),
                              ]),
                          Container(
                            height: MediaQuery.of(context).size.height,
                            decoration: const BoxDecoration(
                              // color: Colors.green,
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10),
                              ),
                            ),
                            child: TabBarView(
                                controller: _tabController,
                                children: [
                                  LinksTabBars(),
                                ]),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            });
      },
      child: const Icon(
        Icons.link_outlined,
        size: 20,
        color: Colors.blue,
      ),
    );
  }
}

class LinksTabBars extends StatefulWidget {
  const LinksTabBars({super.key});

  @override
  State<LinksTabBars> createState() => _LinksTabBarsState();
}

class _LinksTabBarsState extends State<LinksTabBars>
    with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 5, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TabBar(
            controller: _tabController,
            labelColor: Colors.blue,
            unselectedLabelColor: Colors.black,
            tabs: const [
              Tab(
                icon: Icon(
                  Icons.menu_book_outlined,
                  size: 30,
                ),
                child: Text(
                  "This Book",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.emoji_objects_outlined,
                  size: 30,
                ),
                child: Text(
                  "Enrichments",
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.movie_filter_sharp,
                  size: 30,
                ),
                child: Text(
                  "Media",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.blur_circular_outlined,
                  size: 30,
                ),
                child: Text(
                  "Url",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.gif_box_outlined,
                  size: 30,
                ),
                child: Text(
                  "3D",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ]),
        Container(
          height: 820,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10),
            ),
          ),
          child: TabBarView(controller: _tabController, children: const [
            ThisBookPages(),
            Enrichments(),
            MediaLinks(),
            LinksUrls(),
            Objects(),
          ]),
        ),
      ],
    );
  }
}

class ThisBookPages extends StatefulWidget {
  const ThisBookPages({super.key});

  @override
  State<ThisBookPages> createState() => _ThisBookPagesState();
}

class _ThisBookPagesState extends State<ThisBookPages> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.all(20.0),
      itemCount: 108,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
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
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

class Enrichments extends StatefulWidget {
  const Enrichments({super.key});

  @override
  State<Enrichments> createState() => _EnrichmentsState();
}

class _EnrichmentsState extends State<Enrichments>
    with TickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 50,
          child: TabBar(
              controller: _tabController,
              labelColor: Colors.blue,
              unselectedLabelColor: Colors.black,
              tabs: const [
                Tab(
                  child: Text(
                    "Enrichments",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    "Notes",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
              ]),
        ),
        Container(
          height: 500,
          decoration: const BoxDecoration(
            // color: Colors.green,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10),
            ),
          ),
          child: TabBarView(controller: _tabController, children: const [
            Center(
              child: Text(
                "Coming Soon",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
            Center(
                child: Text(
              "Coming Soon",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            )),
          ]),
        ),
      ],
    );
  }
}

class LinksUrls extends StatefulWidget {
  const LinksUrls({super.key});

  @override
  State<LinksUrls> createState() => _LinksUrlsState();
}

class _LinksUrlsState extends State<LinksUrls> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        SizedBox(
          height: 500,
          child: Center(
            child: Text(
              "Coming Soon",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class Objects extends StatefulWidget {
  const Objects({super.key});

  @override
  State<Objects> createState() => _ObjectsState();
}

class _ObjectsState extends State<Objects> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        SizedBox(
          height: 500,
          child: Center(
            child: Text(
              "Coming Soon",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
