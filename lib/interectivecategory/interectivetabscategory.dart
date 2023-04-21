import 'package:flutter/material.dart';

import '../model/inttrectivetabsmodel.dart';

class IntrectiveCatageory extends StatefulWidget {
  const IntrectiveCatageory({super.key});

  @override
  State<IntrectiveCatageory> createState() => _IntrectiveCatageoryState();
}

class _IntrectiveCatageoryState extends State<IntrectiveCatageory> {
  @override
  Widget build(BuildContext context) {
    return RotatedBox(
      quarterTurns: 3,
      child: ListView.builder(
        padding: const EdgeInsets.only(top: 50),
        itemExtent: 120,
        itemCount: intrectavietabsData.length,
        itemBuilder: (BuildContext context, int index) {
          return ListView(scrollDirection: Axis.vertical, children: [
            Column(
              children: [
                ListTile(
                    leading: AspectRatio(
                      aspectRatio: 1,
                      child: ClipRRect(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(5.0)),
                          child: Image.network(
                            intrectavietabsData[index].imageUrl,
                          )),
                    ),
                    contentPadding: const EdgeInsets.only(left: 50, right: 50),
                    title: Text(
                      intrectavietabsData[index].title,
                      style: const TextStyle(
                          fontSize: 26, fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                      intrectavietabsData[index].description,
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
          ]);
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

class Mindmap extends StatefulWidget {
  const Mindmap({super.key});

  @override
  State<Mindmap> createState() => _MindmapState();
}

class _MindmapState extends State<Mindmap> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class Questions extends StatefulWidget {
  const Questions({super.key});

  @override
  State<Questions> createState() => _QuestionsState();
}

class _QuestionsState extends State<Questions> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class Flashcard extends StatefulWidget {
  const Flashcard({super.key});

  @override
  State<Flashcard> createState() => _FlashcardState();
}

class _FlashcardState extends State<Flashcard> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class Excercise extends StatefulWidget {
  const Excercise({super.key});

  @override
  State<Excercise> createState() => _ExcerciseState();
}

class _ExcerciseState extends State<Excercise> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
