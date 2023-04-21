import 'package:flutter/material.dart';

import '../model/internet.dart';

class InternetCatageory extends StatefulWidget {
  const InternetCatageory({super.key});

  @override
  State<InternetCatageory> createState() => _InternetCatageoryState();
}

class _InternetCatageoryState extends State<InternetCatageory> {
  @override
  Widget build(BuildContext context) {
    return RotatedBox(
      quarterTurns: 3,
      child: ListView.builder(
        padding: const EdgeInsets.only(top: 50),
        itemExtent: 120,
        itemCount: internettabsData.length,
        itemBuilder: (BuildContext context, int index) {
          return ListView(
            scrollDirection: Axis.vertical,
            children: [
              Column(
                children: [
                  ListTile(
                      leading: AspectRatio(
                        aspectRatio: 1,
                        child: ClipRRect(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(5.0)),
                            child: Image.network(
                              internettabsData[index].imageUrl,
                            )),
                      ),
                      contentPadding:
                          const EdgeInsets.only(left: 50, right: 50),
                      title: Text(
                        internettabsData[index].title,
                        style: const TextStyle(
                            fontSize: 26, fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        internettabsData[index].description,
                        style: const TextStyle(fontSize: 20),
                      ),
                      onTap: () {
                        Widget newPage = getPage(index);
                        showDialog(
                          // barrierDismissible: false,
                          barrierColor: Colors.transparent,
                          context: context,
                          builder: (BuildContext context) => Dialog(
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
                              child: newPage,
                            ),
                          ),
                        );
                      }),
                  const Divider(
                    indent: 100,
                    color: Colors.black45,
                  )
                ],
              ),
            ],
          );
        },
      ),
    );
  }
}

Widget getPage(int index) {
  switch (index) {
    // case 0:
    //   return Mindmap();

    // case 1:
    //   return Questions();

    // case 2:
    //   return Quiz();
    // case 3:
    //   return Flashcard();
    // case 4:
    //   return Excercise();

    default:
      return const SizedBox(
          child: Center(
              child: Text(
        "Coming Soon",
        style: TextStyle(color: Colors.black),
      )));
  }
}
