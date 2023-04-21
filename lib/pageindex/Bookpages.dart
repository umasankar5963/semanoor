import 'package:flutter/material.dart';


class Bookpages extends StatefulWidget {
  const Bookpages({super.key});

  @override
  State<Bookpages> createState() => _BookpagesState();
}

class _BookpagesState extends State<Bookpages> {
  @override
  Widget build(BuildContext context) {
    // return Flexible(
    //   child: GestureDetector(
    //     behavior: HitTestBehavior.opaque,
    //     // onTap: () {
    //     //   FocusScope.of(context).requestFocus(Image.network);
    //     // },
    //     onDoubleTap: () {
    //       showMenu(
    //         shape: RoundedRectangleBorder(
    //             borderRadius: BorderRadius.all(Radius.circular(10))),
    //         elevation: 8,
    //         color: Colors.transparent,
    //         context: context,
    //         position: RelativeRect.fromLTRB(0.0, 300.0, 300.0, 0.0),
    //         items: [
    //           PopupMenuItem(
    //             child: SingleChildScrollView(
    //               scrollDirection: Axis.horizontal,
    //               child: Column(
    //                 children: [
    //                   Container(
    //                     color: Colors.black,
    //                     child: Row(
    //                       children: <Widget>[
    //                         PopupMenuItem(
    //                           child: Text(
    //                             "Copy",
    //                             style: TextStyle(color: Colors.white),
    //                           ),
    //                         ),
    //                         PopupMenuItem(
    //                           child: Text(
    //                             "Highlight",
    //                             style: TextStyle(color: Colors.white),
    //                           ),
    //                         ),
    //                         PopupMenuItem(
    //                           child: Text(
    //                             "Note",
    //                             style: TextStyle(color: Colors.white),
    //                           ),
    //                         ),
    //                         PopupMenuItem(
    //                           child: Text(
    //                             "Search",
    //                             style: TextStyle(color: Colors.white),
    //                           ),
    //                         ),
    //                         PopupMenuItem(
    //                           child: Text(
    //                             "Internet",
    //                             style: TextStyle(color: Colors.white),
    //                           ),
    //                         ),
    //                         PopupMenuItem(
    //                           child: Text(
    //                             "MindMp",
    //                             style: TextStyle(color: Colors.white),
    //                           ),
    //                         ),
    //                         PopupMenuItem(
    //                           child: Text(
    //                             "Strikeout",
    //                             style: TextStyle(color: Colors.white),
    //                           ),
    //                         ),
    //                         PopupMenuItem(
    //                           child: Text(
    //                             "Underline",
    //                             style: TextStyle(color: Colors.white),
    //                           ),
    //                         ),
    //                       ],
    //                     ),
    //                   ),
    //                   // Container(
    //                   //   margin: EdgeInsets.only(left: 150),
    //                   //   child: ClipPath(
    //                   //     clipper: TriangleClipper(),
    //                   //     child: Container(
    //                   //       decoration: BoxDecoration(
    //                   //           color: Colors.black,
    //                   //           border:
    //                   //               Border.all(color: Colors.white)),
    //                   //       width: 80,
    //                   //       height: 20,
    //                   //     ),
    //                   //   ),
    //                   // ),
    //                 ],
    //               ),
    //             ),
    //           ),
    //         ],
    //       );
    //     },
    //     child: SizedBox(
    //       height: MediaQuery.of(context).size.height / 1,
    //       width: 1100,
    //       child: Image.network(
    //         "https://images.unsplash.com/photo-1568849676085-51415703900f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8MTd8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
    //         // height: 500,

    //         // width: 700,
    //         fit: BoxFit.fill,
    //         // gaplessPlayback: false,
    //         // alignment: Alignment.center,
    //       ),
    //     ),
    //   ),
    // );
    return Flexible(
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: 1100,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(
            Radius.circular(10),
          ),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 2,
              spreadRadius: 2,
            ),
          ],
        ),
        // color: Colors.amber,
        child: BookPages(),
      ),
    );
  }
}

class BookPages extends StatefulWidget {
  const BookPages({super.key});

  @override
  State<BookPages> createState() => _BookPagesState();
}

class _BookPagesState extends State<BookPages> {
  List mainpagedata = [
    // "https://images.pexels.com/photos/1595655/pexels-photo-1595655.jpeg?auto=compress&cs=tinysrgb&w=1600",
    // 'https://picsum.photos/500/500?all=$index',

    "https:images.pexels.com/photos/10026604/pexels-photo-10026604.png?auto=compress&cs=tinysrgb&w=1600&lazy=load",
  ];

  // static var index = 108;
  @override
  Widget build(BuildContext context) {
    return ScrollConfiguration(
      behavior: ScrollConfiguration.of(context).copyWith(scrollbars: true),
      child: SizedBox(
        height: 1000,
        width: 1000,

        // physics: NeverScrollableScrollPhysics(),
        // shrinkWrap: true,

        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: mainpagedata.length,
          itemBuilder: (BuildContext context, int index) {
            return Image.network(
              mainpagedata[index],
              // "https://images.unsplash.com/photo-1568849676085-51415703900f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8MTd8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
              // 'https://picsum.photos/500/500?random=$index',
              // "https://images.pexels.com/photos/1595655/pexels-photo-1595655.jpeg?auto=compress&cs=tinysrgb&w=1600",
              // "https:picsum.photos/200/300.webp",

              fit: BoxFit.cover,
              height: 800,
              width: 1100,
              // scale: 2.0,
            );
          },
        ),
      ),
    );
  }
}
