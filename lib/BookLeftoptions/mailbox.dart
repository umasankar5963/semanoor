import 'package:flutter/material.dart';

class MailBox extends StatefulWidget {
  const MailBox({super.key});

  @override
  State<MailBox> createState() => _MailBoxState();
}

class _MailBoxState extends State<MailBox> with TickerProviderStateMixin {
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
    return InkWell(
      onTap: () {
        showDialog(
            barrierColor: Colors.grey.withAlpha(65),
            context: context,
            builder: (BuildContext context) {
              return Dialog(
                insetPadding: EdgeInsets.only(top: 40),
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                elevation: 8,
                child: SingleChildScrollView(
                  child: Container(
                    height: 730,
                    width: 600,
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
                          width: 600,
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Spacer(),
                                      Text("Mail Box",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20)),
                                      Spacer(),
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
                        Divider(
                          height: 0.3,
                        ),
                        TabBar(
                            controller: _tabController,
                            labelColor: Colors.blue,
                            unselectedLabelColor: Colors.black,
                            tabs: [
                              Tab(
                                child: Text(
                                  "Content",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                ),
                              ),
                              Tab(
                                child: Text(
                                  "Public Content",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                ),
                              ),
                            ]),
                        Container(
                          height: 620,
                          width: 600,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10),
                            ),
                          ),
                          child:
                              TabBarView(controller: _tabController, children: [
                            MailBoxContent(),
                            PublicContent(),
                          ]),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            });
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.mail_outline,
            size: 25,
          ),
          Text(
            "MailBox",
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

class MailBoxContent extends StatefulWidget {
  const MailBoxContent({super.key});

  @override
  State<MailBoxContent> createState() => _MailBoxContentState();
}

class _MailBoxContentState extends State<MailBoxContent>
    with TickerProviderStateMixin {
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
    return SizedBox(
      height: 610,
      width: 600,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          TabBar(
              controller: _tabController,
              labelColor: Colors.blue,
              unselectedLabelColor: Colors.black,
              tabs: [
                Tab(
                  child: Text(
                    "Inbox",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                ),
                Tab(
                  child: Text(
                    "Outbox",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                ),
              ]),
          SizedBox(
            height: 560,
            width: 600,
            child: TabBarView(controller: _tabController, children: [
              SizedBox(
                height: 560,
                width: 600,
                child: Column(
                  children: [
                    SizedBox(
                      height: 50,
                      width: 600,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          IconButton(
                            onPressed: null,
                            icon: Icon(Icons.filter_alt_outlined),
                          )
                        ],
                      ),
                    ),
                    Divider(
                      thickness: 1,
                      height: 1,
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 20),
                      height: 470,
                      width: 600,
                      child: ListView.separated(
                          separatorBuilder: (context, index) => const Divider(
                                height: 4,
                                color: Colors.black38,
                              ),
                          itemCount: 30,
                          itemBuilder: (context, index) {
                            return SizedBox(
                              height: 100,
                              width: 600,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: const [
                                  Icon(
                                    Icons.keyboard_arrow_down,
                                    color: Colors.blue,
                                  ),
                                  VerticalDivider(
                                    color: Colors.blue,
                                    width: 1,
                                    endIndent: 30,
                                    indent: 30,
                                    thickness: 1,
                                  ),
                                  Icon(
                                    Icons.file_download_outlined,
                                    color: Colors.blue,
                                  ),
                                ],
                              ),
                            );
                          }),
                    ),
                    Divider(
                      thickness: 1,
                      height: 1,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20, right: 20),
                      height: 30,
                      width: 600,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            height: 15,
                            width: 15,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.purple,
                            ),
                          ),
                          Text("Enrichments"),
                          Spacer(),
                          Container(
                            height: 15,
                            width: 15,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.yellow,
                            ),
                          ),
                          Text("Notes"),
                          Spacer(),
                          Container(
                            height: 15,
                            width: 15,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.lightGreen,
                            ),
                          ),
                          Text("Links"),
                          Spacer(),
                          Container(
                            height: 15,
                            width: 15,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.green[900],
                            ),
                          ),
                          Text("Drawing"),
                          Spacer(),
                          Container(
                            height: 15,
                            width: 15,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.red,
                            ),
                          ),
                          Text("Annotation"),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'No Content to Show ',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ]),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}

class PublicContent extends StatefulWidget {
  const PublicContent({super.key});

  @override
  State<PublicContent> createState() => _PublicContentState();
}

class _PublicContentState extends State<PublicContent> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 600,
      width: 600,
      child: Column(
        children: [
          SizedBox(
            height: 60,
            width: 600,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(width: 1.0, color: Colors.black38),
                    ),
                    margin: EdgeInsets.only(left: 20),
                    padding: EdgeInsets.only(left: 20),
                    height: 30,
                    width: 380,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "Search here",
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                        Spacer(),
                        IconButton(
                          iconSize: 20,
                          onPressed: null,
                          icon: Icon(Icons.close_outlined),
                        ),
                        IconButton(
                          iconSize: 20,
                          onPressed: null,
                          icon: Icon(Icons.search_outlined),
                        )
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(width: 0.5, color: Colors.black38),
                    ),
                    height: 30,
                    width: 150,
                    child: Row(
                      children: [
                        Container(
                          height: 30,
                          width: 110,
                          color: Colors.indigo[50],
                          child: Center(
                            child: Text(
                              "Created",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black54,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border:
                                Border.all(width: 0.5, color: Colors.black38),
                          ),
                          width: 38,
                          height: 30,
                          child: Center(
                            child: IconButton(
                              padding: EdgeInsets.only(bottom: 1),
                              onPressed: null,
                              icon: Icon(
                                Icons.arrow_upward_outlined,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ]),
          ),
          SizedBox(
            height: 550,
            width: 600,
            child: ListView.separated(
                separatorBuilder: (context, index) => Divider(
                      height: 2,
                      thickness: 0.9,
                      color: Colors.black38,
                    ),
                itemCount: 40,
                itemBuilder: ((context, index) {
                  return Container(
                    height: 60,
                    width: 600,
                    color: Colors.white,
                  );
                })),
          ),
        ],
      ),
    );
  }
}
