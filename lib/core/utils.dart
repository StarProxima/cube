import 'dart:io';

import 'package:flutter/foundation.dart';

final kIsMobile = !kIsWeb && Platform.isAndroid || Platform.isIOS;
final kIsDesktop =
    !kIsWeb && Platform.isWindows || Platform.isMacOS || Platform.isLinux;
