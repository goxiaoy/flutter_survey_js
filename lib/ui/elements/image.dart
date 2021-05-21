import 'package:flutter/material.dart';

Widget urlToImage(String? link, {double width = 100, double height = 100}) {
  if (link == null) {
    return SizedBox(
      width: width,
      height: height,
    );
  } else {
    final url = Uri.tryParse(link);
    if (url == null) {
      return SizedBox(
        width: width,
        height: height,
      );
    }
    if (url.data != null && url.data!.isBase64) {
      return Image.memory(url.data!.contentAsBytes(), gaplessPlayback: true);
    }
    if (url.isAbsolute) {
      return Image.network(link, gaplessPlayback: true);
    } else {
      return SizedBox(
        width: width,
        height: height,
      );
    }
  }
}
