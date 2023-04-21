import 'package:flutter/material.dart';
import 'package:semooorbook/BasicCategory/Drawing/drawingtabenrichment.dart';
import 'package:semooorbook/BasicCategory/Imagegallery/imagegallery.dart';
import 'package:semooorbook/BasicCategory/Qr%20Code/qrcode.dart';
import 'package:semooorbook/BasicCategory/audiogallery/audiogallery.dart';
import 'package:semooorbook/BasicCategory/videogallery/videogallery.dart';
import 'package:semooorbook/model/basictabsmodel.dart';


import 'basicpage.dart';

class BasicCategory extends StatefulWidget {
  const BasicCategory({super.key});

  @override
  State<BasicCategory> createState() => _BasicCategoryState();
}

class _BasicCategoryState extends State<BasicCategory> {
  @override
  Widget build(BuildContext context) {
    return RotatedBox(
      quarterTurns: 3,
      child: ListView.builder(
        padding: const EdgeInsets.only(top: 50),
        itemExtent: 120,
        itemCount: basictabsData.length,
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
                              basictabsData[index].imageUrl,
                            )),
                      ),
                      contentPadding:
                          const EdgeInsets.only(left: 50, right: 50),
                      title: Text(
                        basictabsData[index].title,
                        style: const TextStyle(
                            fontSize: 26, fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        basictabsData[index].description,
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

  Widget getPage(int index) {
    switch (index) {
      case 0:
        return BasicPage();

      case 1:
        return Drawing();

      case 2:
        return QRCode();
      case 3:
        return ImageGallery();
      case 4:
        return VideoGallery();
      case 5:
        return const AudioGallery();
      default:
        return SizedBox();
    }
  }
}
