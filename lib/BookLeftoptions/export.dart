import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Export extends StatefulWidget {
  const Export({super.key});

  @override
  State<Export> createState() => _ExportState();
}

class _ExportState extends State<Export> {
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
                child: Container(
                  height: 730,
                  width: 700,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  child: const Exporting(),
                ),
              );
            });
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Icon(
            Icons.send_outlined,
            size: 25,
          ),
          Text(
            "Export",
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

class ExportBar extends StatefulWidget {
  const ExportBar({super.key});

  @override
  State<ExportBar> createState() => _ExportBarState();
}

class _ExportBarState extends State<ExportBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
        color: Colors.indigo[50],
      ),
      child:
          Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(),
            Text("Export",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
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
    );
  }
}

class Exporting extends StatefulWidget {
  const Exporting({super.key});

  @override
  State<Exporting> createState() => _ExportingState();
}

class _ExportingState extends State<Exporting> {
  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          ExportBar(),
          ChooseCatagery(),
        ]);
  }
}

class ChooseCatagery extends StatefulWidget {
  const ChooseCatagery({super.key});

  @override
  State<ChooseCatagery> createState() => _ChooseCatageryState();
}

class _ChooseCatageryState extends State<ChooseCatagery> {
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            const Text("Choose Export Category "),
            const Icon(Icons.info),
            const Spacer(
              flex: 2,
            ),
            Switch(
              value: isSwitched,
              onChanged: (value) {
                setState(() {
                  isSwitched = value;
                  print(isSwitched);
                });
              },
              activeColor: Colors.green,
              activeTrackColor: Colors.greenAccent,
            ),
            const Text("Export to Author"),
            const Spacer(
              flex: 3,
            ),
          ],
        ),
        ContantAndSocial(),
      ],
    );
  }
}

class ContantAndSocial extends StatefulWidget {
  const ContantAndSocial({super.key});

  @override
  State<ContantAndSocial> createState() => _ContantAndSocialState();
}

class _ContantAndSocialState extends State<ContantAndSocial> {
  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Spacer(),
          Container(
            height: 70,
            width: 70,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.blue[100],
            ),
            child: const IconButton(
              onPressed: null,
              icon: Icon(
                Icons.perm_contact_calendar_outlined,
                color: Colors.blue,
                size: 40,
              ),
            ),
          ),
          Spacer(),
          Container(
            height: 70,
            width: 70,
            decoration:
                BoxDecoration(shape: BoxShape.circle, color: Colors.blue[100]),
            child: const IconButton(
              onPressed: null,
              icon: Icon(
                Icons.polyline_outlined,
                color: Colors.blue,
                size: 40,
              ),
            ),
          ),
          Spacer(),
          Container(
            height: 70,
            width: 70,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.blue[100],
            ),
            child: const IconButton(
              onPressed: null,
              icon: Icon(
                Icons.groups_outlined,
                color: Colors.blue,
                size: 40,
              ),
            ),
          ),
          Spacer(),
          Container(
            height: 70,
            width: 70,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.blue[100],
            ),
            child: const IconButton(
              onPressed: null,
              icon: Icon(
                Icons.link_off_outlined,
                color: Colors.blue,
                size: 40,
              ),
            ),
          ),
          Spacer(),
        ],
      ),
      TitleAndDescription(),
    ]);
  }
}

class TitleAndDescription extends StatefulWidget {
  const TitleAndDescription({super.key});

  @override
  State<TitleAndDescription> createState() => _TitleAndDescriptionState();
}

class _TitleAndDescriptionState extends State<TitleAndDescription> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            Spacer(flex: 3),
            Text(
              "Contacts",
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
            ),
            Spacer(
              flex: 3,
            ),
            Text(
              "Social",
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
            ),
            Spacer(
              flex: 3,
            ),
            Text(
              "Groups",
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
            ),
            Spacer(
              flex: 2,
            ),
            Text(
              "Deafult Links",
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
            ),
            Spacer(
              flex: 3,
            ),
          ],
        ),
        Row(
          children: [
            Container(
              margin: EdgeInsets.only(left: 50),
              padding: EdgeInsets.all(1),
              height: 40,
              width: 600,
              child: Row(
                children: const [
                  Text(
                    "Title",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ],
              ),
            ),
          ],
        ),
        Row(
          children: [
            Container(
              margin: const EdgeInsets.only(left: 50),
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              padding: EdgeInsets.all(1),
              height: 40,
              width: 600,
              child: const TextField(
                maxLines: 1,
                minLines: 1,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  contentPadding: EdgeInsets.fromLTRB(5, 2, 10, 21),
                  hintText: "Enter Title",
                ),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Container(
              margin: EdgeInsets.only(left: 50, top: 20),
              padding: EdgeInsets.all(1),
              height: 40,
              width: 600,
              child: Row(
                children: const [
                  Text(
                    "Description",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ],
              ),
            ),
          ],
        ),
        Row(
          children: [
            Container(
              margin: const EdgeInsets.only(left: 50),
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              padding: const EdgeInsets.all(1),
              height: 120,
              width: 600,
              child: const TextField(
                maxLines: 10,
                minLines: 10,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  contentPadding: EdgeInsets.fromLTRB(5, 2, 10, 21),
                  hintText: "Enter Description",
                ),
              ),
            ),
          ],
        ),
        EditAndShare(),
      ],
    );
  }
}

class EditAndShare extends StatefulWidget {
  const EditAndShare({super.key});

  @override
  State<EditAndShare> createState() => _EditAndShareState();
}

class _EditAndShareState extends State<EditAndShare> {
  bool checked = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Row(
          children: const [
            Spacer(),
            Text(
              "Editable & Shareable",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            Spacer(
              flex: 9,
            ),
          ],
        ),
        Row(children: const [
          Spacer(
            flex: 2,
          ),
          Text(
            "Give the reciever permission to edit and reshare the exported content",
            style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.black54),
          ),
          Spacer(
            flex: 7,
          ),
        ]),
        Row(
          children: [
            Spacer(),
            Checkbox(
              value: checked,
              onChanged: (val) {
                setState(() {});
                checked = val!;
              },
            ),
            Text(
              "Editable",
              style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  color: Colors.black54),
            ),
            Spacer(),
            Checkbox(
              value: checked,
              onChanged: (val) {
                setState(() {});
                checked = val!;
              },
            ),
            Text(
              "Shareable",
              style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  color: Colors.black54),
            ),
            Spacer(
              flex: 8,
            ),
          ],
        ),
        SizedBox(
          height: 170,
        ),
        TermsAndConditions(),
      ],
    );
  }
}

class TermsAndConditions extends StatefulWidget {
  const TermsAndConditions({super.key});

  @override
  State<TermsAndConditions> createState() => _TermsAndConditionsState();
}

class _TermsAndConditionsState extends State<TermsAndConditions> {
  bool? checked = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Spacer(),
        Checkbox(
          value: checked,
          onChanged: (val) {
            setState(() {});
            checked = val!;
          },
        ),
        Text(
          "By exporting, you agree to our",
          style: TextStyle(
              fontSize: 17, fontWeight: FontWeight.bold, color: Colors.black54),
        ),
        TextButton(
            onPressed: null,
            child: Text(
              "Terms & Conditions",
              style: TextStyle(color: Colors.blue),
            )),
        Spacer(
          flex: 4,
        ),
        TextButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
            ),
            onPressed: null,
            child: Text(
              "Next",
              selectionColor: Colors.blue,
              style: TextStyle(color: Colors.white),
            )),
        Spacer(),
      ],
    );
  }
}
