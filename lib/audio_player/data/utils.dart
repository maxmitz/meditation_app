import 'dart:io';

import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';

Future<Uri> getImageFileFromAssets(String imagePath) async {
  final byteData = await rootBundle.load(imagePath);
  final buffer = byteData.buffer;
  Directory tempDir = await getApplicationDocumentsDirectory();
  String tempPath = tempDir.path;
  var filePath = '$tempPath/temporary_file.png';
  return (await File(filePath).writeAsBytes(
    buffer.asUint8List(byteData.offsetInBytes, byteData.lengthInBytes),
  ))
      .uri;
}
