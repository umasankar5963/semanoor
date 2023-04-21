import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MediaLinks extends StatefulWidget {
  const MediaLinks({super.key});

  @override
  State<MediaLinks> createState() => _MediaLinksState();
}

class _MediaLinksState extends State<MediaLinks> with TickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);

    // TODO: implement initState
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
              tabs: [
                'YouTube',
                'Images',
                'Gallery',
              ]
                  .map((tabName) => Tab(
                          child: Text(
                        tabName,
                        style: const TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      )))
                  .toList()),
        ),
        SizedBox(
          height: 500,
          child: TabBarView(controller: _tabController, children: const [
            Center(
              child: Text(
                "Coming Soon",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            Center(
              child: Text("Coming Soon",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            ),
            Center(
              child: Text("Coming Soon",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            ),
          ]),
        )
      ],
    );
  }
}
