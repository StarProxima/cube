import 'dart:io';

import 'package:cube_system/ui/main_app.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:window_size/window_size.dart';

import 'package:cube_system/core/hive_initializer.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  if (!kIsWeb && (Platform.isWindows || Platform.isLinux || Platform.isMacOS)) {
    setWindowTitle('Куб.Расписание');
    setWindowMinSize(const Size(460, 380));
  }

  HiveInitializer.init();

  runApp(
    const ProviderScope(
      observers: [],
      child: MainApp(),
    ),
  );
}
