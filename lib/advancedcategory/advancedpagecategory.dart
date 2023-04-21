import 'package:flutter/material.dart';
import 'package:semooorbook/model/advancedtabsmodel.dart';


import 'AdvancedPage/advancedpage.dart';

class AdvancedCatageory extends StatefulWidget {
  const AdvancedCatageory({super.key});

  @override
  State<AdvancedCatageory> createState() => _AdvancedCatageoryState();
}

class _AdvancedCatageoryState extends State<AdvancedCatageory> {
  @override
  Widget build(BuildContext context) {
    return RotatedBox(
      quarterTurns: 3,
      child: ListView.builder(
        padding: const EdgeInsets.only(top: 50),
        itemExtent: 120,
        itemCount: advancedtabsData.length,
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
                            advancedtabsData[index].imageUrl,
                          )),
                    ),
                    contentPadding: const EdgeInsets.only(left: 50, right: 50),
                    title: Text(
                      advancedtabsData[index].title,
                      style: const TextStyle(
                          fontSize: 26, fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                      advancedtabsData[index].description,
                      style: const TextStyle(fontSize: 20),
                    ),
                    onTap: () {
                      Widget newPage = getPage(index);
                      showDialog(
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
                    },
                  ),
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
    case 0:
      return const AdvancedPage();

    case 1:
      return const Pagefrombook();

    case 2:
      return const Duplicateasimage();
    case 3:
      return const Template();

    default:
      return const SizedBox();
  }
}

class Pagefrombook extends StatefulWidget {
  const Pagefrombook({super.key});

  @override
  State<Pagefrombook> createState() => _PagefrombookState();
}

class _PagefrombookState extends State<Pagefrombook> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text("Page from Book")),
    );
  }
}

class Duplicateasimage extends StatefulWidget {
  const Duplicateasimage({super.key});

  @override
  State<Duplicateasimage> createState() => _DuplicateasimageState();
}

class _DuplicateasimageState extends State<Duplicateasimage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text("Duplicate as image")),
    );
  }
}

class Template extends StatefulWidget {
  const Template({super.key});

  @override
  State<Template> createState() => _TemplateState();
}

class _TemplateState extends State<Template> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text("Template")),
      ),
    );
  }
}
