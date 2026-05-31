import 'package:flutter/material.dart';

import 'my_app.dart';

void main() {
  //Widget flutter binding
  WidgetsFlutterBinding.ensureInitialized();
  //Flutter native splash
  // FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  runApp(const MyApp());
}

