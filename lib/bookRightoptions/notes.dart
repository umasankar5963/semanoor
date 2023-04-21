import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Notes extends StatefulWidget {
  const Notes({super.key});

  @override
  State<Notes> createState() => _NotesState();
}

class _NotesState extends State<Notes> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showDialog(
            barrierColor: Colors.grey.withAlpha(65),
            context: context,
            builder: (BuildContext context) {
              return Dialog(
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                elevation: 8,
                child: Container(
                  height: 450,
                  width: 350,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  child: Notepad(),
                ),
              );
            });
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: const [
          Icon(
            Icons.post_add_sharp,
            size: 25,
          ),
          Text(
            textAlign: TextAlign.center,
            "Notes",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}

class Notepad extends StatefulWidget {
  const Notepad({super.key});

  @override
  State<Notepad> createState() => _NotepadState();
}

class _NotepadState extends State<Notepad> {
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
              children: [
                Spacer(),
                Text("Notes",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                Spacer(),
                Icon(Icons.close_outlined),
              ],
            ),
          ),
        ),
        Divider(
          height: 0.3,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 330,
              // color: Colors.red,
              child: Center(
                  child: SizedBox(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(
                      Icons.note_add_outlined,
                      size: 100,
                      color: Colors.black12,
                    ),
                    Text(
                      "No Notes Created",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black26),
                    ),
                    Text(
                      "Tap + to Add new notes",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black26),
                    )
                  ],
                ),
              )),
            ),
            Row(children: [
              Spacer(),
              SizedBox(
                width: 60,
                height: 45,
                child: FittedBox(
                  child: FloatingActionButton(
                    backgroundColor: Colors.blue[700],
                    onPressed: null,
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                ),
              )
            ]),
          ],
        )
      ],
    );
  }
}
