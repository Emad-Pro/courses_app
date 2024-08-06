import 'dart:io';

import 'package:flutter/material.dart';

ImageProvider getImageProvider(String url) {
  if (url.startsWith('http')) {
    return NetworkImage(url);
  } else if (url.startsWith('assets')) {
    return AssetImage(url);
  } else {
    return FileImage(
      File(url),
    );
  }
}
