import 'dart:typed_data';
import 'package:cool_alert/cool_alert.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:image_gallery_saver/image_gallery_saver.dart';
import 'package:permission_handler/permission_handler.dart';

class ImageDetail extends StatefulWidget {
  final String imgUrl;
  ImageDetail({@required this.imgUrl});

  // ImageDetail({Key key}) : super(key: key);

  @override
  _ImageDetailState createState() => _ImageDetailState();
}

class _ImageDetailState extends State<ImageDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Hero(
            tag: widget.imgUrl,
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Image.network(
                widget.imgUrl,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Scaffold(
            backgroundColor: Colors.transparent,
            appBar: new AppBar(
              leading: Builder(
                builder: (BuildContext context) {
                  return IconButton(
                    icon: const Icon(
                      Icons.arrow_back_ios,
                      color: Colors.black,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  );
                },
              ),
              backgroundColor: Colors.transparent,
              elevation: 0.0,
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            alignment: Alignment.bottomCenter,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap: () {
                    _save();
                    CoolAlert.show(
                      context: context,
                      type: CoolAlertType.success,
                      text: "Download successful!",
                    );
                  },
                  child: Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width / 2,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.black38),
                    child: Center(
                      child: Text(
                        "Save Wallpaper",
                        style: TextStyle(color: Colors.white70, fontSize: 18),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 100,
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  // _save() async {
  // //   if (Platform.isAndroid) {
  // //     await _askPermission();
  // //   }
  // //   var response = await Dio()
  // //       .get(widget.imgUrl, options: Options(responseType: ResponseType.bytes));
  // //   final result =
  // //       await ImageGallerySaver.saveImage(Uint8List.fromList(response.data));
  // //   print(result);
  // //   Navigator.pop(context);
  // // }

  // // _askPermission() async {
  // //   PermissionStatus permission = await PermissionHandler()
  // //       .checkPermissionStatus(PermissionGroup.storage);
  // // }

  _save() async {
    var status = await Permission.storage.request();
    if (status.isGranted) {
      var response = await Dio().get(widget.imgUrl,
          options: Options(responseType: ResponseType.bytes));
      final result =
          await ImageGallerySaver.saveImage(Uint8List.fromList(response.data));
      print(result);
    }
  }
}
