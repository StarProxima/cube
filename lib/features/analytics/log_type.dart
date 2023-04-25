import 'package:proxima_logger/proxima_logger.dart';

enum Log implements LogType {
  info(
    label: 'info',
    emoji: '💡',
    ansiPen: AnsiPen.none(),
  ),
  debug(
    label: 'debug',
    emoji: '🐛',
    ansiPen: AnsiPen.green(),
  ),
  warning(
    label: 'warning',
    emoji: '⚠️',
    ansiPen: AnsiPen.orange(),
  ),
  error(
    label: 'error',
    emoji: '⛔',
    ansiPen: AnsiPen.red(),
  ),
  wtf(
    label: 'wtf',
    emoji: '👾',
    ansiPen: AnsiPen.purple(),
  ),
  request(
    label: 'request',
    emoji: '📡',
    ansiPen: AnsiPen.blue(),
  ),
  response(
    label: 'response',
    emoji: '📡',
    ansiPen: AnsiPen.blue(),
  ),
  route(
    label: 'route',
    emoji: '🔀',
    ansiPen: AnsiPen.lightBlue(),
  ),
  settings(
    label: 'settings',
    emoji: '⚙️ ',
    ansiPen: AnsiPen.cyan(),
  ),
  nothing(
    label: '',
    emoji: '',
    ansiPen: AnsiPen.none(),
  );

  @override
  final String label;
  @override
  final String emoji;
  @override
  final AnsiPen ansiPen;
  @override
  final AnsiPen ansiPenOnBackground;

  const Log({
    required this.label,
    required this.emoji,
    required this.ansiPen,
    // ignore: unused_element
    this.ansiPenOnBackground = const AnsiPen.black(),
  });
}
