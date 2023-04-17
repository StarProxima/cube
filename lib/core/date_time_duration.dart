class DateTimeDuration {
  final Duration duration;

  late final int days;
  late final int hours;
  late final int minutes;
  late final int seconds;
  late final int milliseconds;

  DateTimeDuration(this.duration) {
    _calculateFields();
  }

  void _calculateFields() {
    Duration dur = duration.isNegative
        ? Duration.zero
        : Duration(milliseconds: duration.inMilliseconds);

    days = dur.inDays;
    dur -= Duration(days: days);
    hours = dur.inHours;
    dur -= Duration(hours: hours);
    minutes = dur.inMinutes;
    dur -= Duration(minutes: minutes);
    seconds = dur.inSeconds;
    dur -= Duration(seconds: seconds);
    milliseconds = dur.inMilliseconds;
  }

  String format({
    bool alwaysShowDays = false,
    bool alwaysShowHours = false,
    bool alwaysShowMinutes = true,
    bool alwaysShowSeconds = true,
    bool alwaysShowMillisecons = false,
    bool showDays = true,
    bool showHours = true,
    bool showMinutes = true,
    bool showSeconds = true,
    bool showMillisecons = false,
  }) {
    final buffer = StringBuffer();

    bool previusShow = false;

    void write(
      int val, {
      required bool show,
      required bool alwaysShow,
    }) {
      if (show && (val > 0 || previusShow || alwaysShow)) {
        if (previusShow) {
          buffer.write(":");
        } else {
          previusShow = true;
        }
        buffer.write("$val".padLeft(2, '0'));
      }
    }

    write(
      days,
      show: showDays,
      alwaysShow: alwaysShowDays,
    );

    write(
      hours,
      show: showHours,
      alwaysShow: alwaysShowHours,
    );

    write(
      minutes,
      show: showMinutes,
      alwaysShow: alwaysShowMinutes,
    );

    write(
      seconds,
      show: showSeconds,
      alwaysShow: alwaysShowSeconds,
    );

    write(
      milliseconds,
      show: showMillisecons,
      alwaysShow: alwaysShowMillisecons,
    );

    return buffer.toString();
  }
}
