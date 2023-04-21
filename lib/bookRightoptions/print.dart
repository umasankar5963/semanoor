import 'package:flutter/material.dart';

class Print extends StatefulWidget {
  const Print({super.key});

  @override
  State<Print> createState() => _PrintState();
}

class _PrintState extends State<Print> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showDialog(
            barrierColor: Colors.grey.withAlpha(65),
            context: context,
            builder: (BuildContext context) {
              return Dialog(
                elevation: 8,
                insetPadding: EdgeInsets.only(top: 42),
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Container(
                  height: 850,
                  width: 600,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  child: PrintBar(),
                ),
              );
            });
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: const [
          Icon(
            Icons.print_outlined,
            size: 25,
          ),
          Text(
            textAlign: TextAlign.center,
            "Print",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}

class PrintBar extends StatefulWidget {
  const PrintBar({super.key});

  @override
  State<PrintBar> createState() => _PrintBarState();
}

class _PrintBarState extends State<PrintBar> with TickerProviderStateMixin {
  var checked = false;
  late TabController _tabController;
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
    return Column(
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
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Spacer(),
                const Text("Print",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
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
        ),
        const Divider(
          height: 0.3,
        ),
        TabBar(
            controller: _tabController,
            labelColor: Colors.blue,
            unselectedLabelColor: Colors.black,
            tabs: const [
              Tab(
                child: Text(
                  "Pages",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
              ),
              Tab(
                child: Text(
                  "Tabs",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
              ),
            ]),
        Container(
          height: 750,
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10))),
          child: TabBarView(controller: _tabController, children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 700,
                  width: MediaQuery.of(context).size.width,

                  // child: Text(
                  //   "Coming Soon",
                  //   style: TextStyle(
                  //       fontSize: 17,
                  //       fontWeight: FontWeight.bold,
                  //       color: Colors.black54),
                  // ),
                  child: Image.network(
                    "https://images.pexels.com/photos/1595655/pexels-photo-1595655.jpeg?auto=compress&cs=tinysrgb&w=1600",
                    fit: BoxFit.fill,
                  ),
                ),
                Container(
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(10),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        blurRadius: 1,
                        spreadRadius: 1,
                      ),
                    ],
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Spacer(),
                      Checkbox(
                        value: checked,
                        onChanged: (val) {
                          setState(() {});
                          checked = val!;
                        },
                      ),
                      const Text(
                        "Print With drawing and annotation",
                        style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            color: Colors.black54),
                      ),
                      const Spacer(
                        flex: 9,
                      ),
                      SizedBox(
                        width: 100,
                        child: TextButton(
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all<Color>(Colors.blue),
                            ),
                            onPressed: null,
                            child: const Text(
                              "print",
                              selectionColor: Colors.blue,
                              style: TextStyle(color: Colors.white),
                            )),
                      ),
                      Spacer(),
                    ],
                  ),
                ),
              ],
            ),
            Tabs(),
          ]),
        )
      ],
    );
  }
}

class Tabs extends StatefulWidget {
  const Tabs({super.key});

  @override
  State<Tabs> createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const SizedBox(
          height: 500,
          child: Center(
            child: Text(
              "No Enrchiments To Show",
              style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  color: Colors.black54),
            ),
          ),
        ),
        Container(
          height: 50,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                margin: EdgeInsets.only(right: 20),
                width: 100,
                child: TextButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.black12),
                    ),
                    onPressed: null,
                    child: const Text(
                      "print",
                      selectionColor: Colors.blue,
                      style: TextStyle(color: Colors.black45),
                    )),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
