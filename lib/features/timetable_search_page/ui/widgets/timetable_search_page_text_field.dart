import 'package:cube_system/styles/app_theme_context_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TimetableSearchPageTextField extends ConsumerWidget {
  const TimetableSearchPageTextField({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return TextField(
      style: context.textStyles.smallLabel.copyWith(
        fontSize: 14,
      ),
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
        isDense: true,
        hintText: 'Найти расписание',
        hintStyle: context.textStyles.subTitle.copyWith(
          color: context.colors.hintText,
        ),
        border: InputBorder.none,
      ),
    );
  }
}
