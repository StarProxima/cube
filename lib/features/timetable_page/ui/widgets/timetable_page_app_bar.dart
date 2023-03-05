import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TimetablePageAppBar extends ConsumerWidget with PreferredSizeWidget {
  const TimetablePageAppBar({
    super.key,
  });

  @override
  Size get preferredSize => const Size.fromHeight(46);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AppBar();
  }
}
