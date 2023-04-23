import 'dart:io';

import 'package:cube_system/ui/main_app.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:window_size/window_size.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  if (!kIsWeb && (Platform.isWindows || Platform.isLinux || Platform.isMacOS)) {
    setWindowTitle('Куб.Расписание');
    setWindowMinSize(const Size(460, 380));
    setWindowMaxSize(const Size.fromWidth(700));
  }

  runApp(
    const ProviderScope(
      observers: [],
      child: MainApp(),
    ),
  );
}
