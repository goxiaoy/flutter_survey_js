import 'package:flutter/material.dart';
import 'package:flutter_survey_js/ui/video_widget.dart';
import 'package:path/path.dart' as p;

Widget urlToImage(String? link, {double? width, double? height}) {
  Widget inner = Container();
  if (link == null) {
    return SizedBox(
      width: width,
      height: height,
      child: inner,
    );
  } else {
    final url = Uri.tryParse(link);
    if (url == null) {
      return SizedBox(
        width: width,
        height: height,
        child: inner,
      );
    }
    if (url.data != null && url.data!.isBase64) {
      inner = Image.memory(url.data!.contentAsBytes(), gaplessPlayback: true);
    } else if (url.isAbsolute) {
      if (UrlTypeHelper.getType(url) == UrlType.video) {
        inner = VideoWidget(uri: url);
      } else {
        inner = Image.network(link, gaplessPlayback: true);
      }
    }

    return SizedBox(
      width: width,
      height: height,
      child: inner,
    );
  }
}

enum UrlType { image, video, unknown }

class UrlTypeHelper {
  static final List<String> _imageTypes = [
    'jpg',
    'jpeg',
    'jfif',
    'pjpeg',
    'pjp',
    'png',
    'svg',
    'gif',
    'apng',
    'webp',
    'avif'
  ];

  static final List<String> _videoTypes = [
    "3g2",
    "3gp",
    "aaf",
    "asf",
    "avchd",
    "avi",
    "drc",
    "flv",
    "m2v",
    "m3u8",
    "m4p",
    "m4v",
    "mkv",
    "mng",
    "mov",
    "mp2",
    "mp4",
    "mpe",
    "mpeg",
    "mpg",
    "mpv",
    "mxf",
    "nsv",
    "ogg",
    "ogv",
    "qt",
    "rm",
    "rmvb",
    "roq",
    "svi",
    "vob",
    "webm",
    "wmv",
    "yuv"
  ];

  static UrlType getType(Uri uri) {
    try {
      String extension = p.extension(uri.path).toLowerCase();
      if (extension.isEmpty) {
        return UrlType.unknown;
      }

      extension = extension.split('.').last;
      if (_imageTypes.contains(extension)) {
        return UrlType.image;
      } else if (_videoTypes.contains(extension)) {
        return UrlType.video;
      }
    } catch (e) {
      return UrlType.unknown;
    }
    return UrlType.unknown;
  }
}
