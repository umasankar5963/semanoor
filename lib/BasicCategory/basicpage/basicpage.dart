import 'package:flutter/material.dart';

class BasicPage extends StatefulWidget {
  const BasicPage({super.key});

  @override
  State<BasicPage> createState() => _BasicPageState();
}

class _BasicPageState extends State<BasicPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo[50],
      body: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 2,
                    spreadRadius: 2,
                  ),
                ],
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(10),
                    bottomLeft: Radius.circular(10))),
            child: IconButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                      builder: (context) => const BasicPageEditmode()),
                );
              },
              icon: const Icon(
                Icons.edit,
                size: 30,
              ),
            )),
        Container(
          height: MediaQuery.of(context).size.height,
          width: 1100,
          color: Colors.white,
        ),
      ]),
    );
  }
}

class BasicPageEditmode extends StatefulWidget {
  const BasicPageEditmode({super.key});

  @override
  State<BasicPageEditmode> createState() => _BasicPageEditmodeState();
}

class _BasicPageEditmodeState extends State<BasicPageEditmode> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        (Row(
          children: [
            InkWell(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: Container(
                  height: 40,
                  width: 70,
                  decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      border: Border.all(color: Colors.black12)),
                  child: Row(
                    children: const [
                      Icon(Icons.arrow_back_ios_new_outlined),
                      Text("Back"),
                    ],
                  )),
            ),
            mediaButton('Image', context),
            mediaButton('Video', context),
            mediaButton('Audio', context),
            Expanded(
              child: SizedBox(
                height: 40,
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.25,
                    height: 40,
                    decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        border: Border.all(color: Colors.black12)),
                    child: const Center(
                        child: Text(
                      "Advanced edit toolbar",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w900),
                    )),
                  ),
                ),
              ),
            ),
          ],
        )),
        const Card(child: BasicPagedittools()),
      ]),
    );
  }

  mediaButton(String text, BuildContext context) {
    final finalname = MediaQuery.of(context).size.width * 0.3;
    return InkWell(
      onTap: () {},
      child: Container(
        width: 100,
        height: 40,
        decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            border: Border.all(color: Colors.black12)),
        child: Center(
            child: Text(
          text,
          style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w900),
        )),
      ),
    );
  }
}

class BasicPagedittools extends StatefulWidget {
  const BasicPagedittools({super.key});

  @override
  State<BasicPagedittools> createState() => _BasicPagedittoolsState();
}

class _BasicPagedittoolsState extends State<BasicPagedittools> {
  double iconsheight = 40;
  double iconswidth = 40;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: MediaQuery.of(context).size.width * 0.03,
      runSpacing: MediaQuery.of(context).size.height * 0.03,
      // mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        SizedBox(
          width: 100,
          child: Row(children: [
            InkWell(
              onTap: (() {}),
              child: SizedBox(
                height: iconsheight,
                width: iconswidth,
                child: const Icon(Icons.undo),
              ),
            ),
            InkWell(
              onTap: (() {}),
              child: SizedBox(
                height: iconsheight,
                width: iconswidth,
                child: const Icon(Icons.redo),
              ),
            ),
          ]),
        ),
        InkWell(
          onTap: (() {}),
          child: SizedBox(
            height: iconsheight,
            width: iconswidth,
            child: const Icon(Icons.format_bold_outlined),
          ),
        ),
        InkWell(
          onTap: (() {}),
          child: SizedBox(
            height: iconsheight,
            width: iconswidth,
            child: const Icon(Icons.format_italic_outlined),
          ),
        ),
        InkWell(
          onTap: (() {}),
          child: SizedBox(
            height: iconsheight,
            width: iconswidth,
            child: const Icon(Icons.format_underline),
          ),
        ),
        InkWell(
          onTap: (() {}),
          child: SizedBox(
            height: iconsheight,
            width: iconswidth,
            child: const Icon(Icons.strikethrough_s_outlined),
          ),
        ),
        InkWell(
            onTap: (() {}),
            child: SizedBox(
                height: iconsheight,
                width: iconswidth,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(
                      Icons.keyboard_arrow_left,
                      size: 15,
                    ),
                    Text(
                      "/",
                      style: TextStyle(fontSize: 20),
                    ),
                    Icon(
                      Icons.keyboard_arrow_right,
                      size: 15,
                    ),
                  ],
                ))),
        InkWell(
          onTap: (() {}),
          child: SizedBox(
            height: iconsheight,
            width: iconswidth,
            child: const Icon(
              Icons.edit,
            ),
          ),
        ),
        InkWell(
          onTap: (() {}),
          child: SizedBox(
            height: iconsheight,
            width: iconswidth,
            child: const Icon(Icons.title_outlined),
          ),
        ),
        InkWell(
          onTap: (() {}),
          child: SizedBox(
            height: iconsheight,
            width: iconswidth,
            child: const Icon(Icons.motion_photos_auto_sharp),
          ),
        ),
        InkWell(
          onTap: (() {}),
          child: SizedBox(
            height: iconsheight,
            width: iconswidth,
            child: const Icon(Icons.h_mobiledata),
          ),
        ),
        InkWell(
          onTap: (() {}),
          child: SizedBox(
            height: iconsheight,
            width: iconswidth,
            child: const Icon(Icons.h_mobiledata),
          ),
        ),
        InkWell(
          onTap: (() {}),
          child: SizedBox(
            height: iconsheight,
            width: iconswidth,
            child: const Icon(Icons.format_list_numbered),
          ),
        ),
        InkWell(
          onTap: (() {}),
          child: SizedBox(
            height: iconsheight,
            width: iconswidth,
            child: const Icon(Icons.list),
          ),
        ),
        InkWell(
          onTap: (() {}),
          child: SizedBox(
            height: iconsheight,
            width: iconswidth,
            child: const Icon(Icons.checklist),
          ),
        ),
        InkWell(
          onTap: (() {}),
          child: SizedBox(
            height: iconsheight,
            width: iconswidth,
            child: const Icon(Icons.format_line_spacing_outlined),
          ),
        ),
        InkWell(
          onTap: (() {}),
          child: SizedBox(
            height: iconsheight,
            width: iconswidth,
            child: const Icon(Icons.list_sharp),
          ),
        ),
        InkWell(
          onTap: (() {}),
          child: SizedBox(
            height: iconsheight,
            width: iconswidth,
            child: const Icon(Icons.list),
          ),
        ),
        InkWell(
          onTap: (() {}),
          child: SizedBox(
            height: iconsheight,
            width: iconswidth,
            child: const Icon(Icons.link),
          ),
        ),
      ],
    );
  }
}
