import 'package:cube_system/styles/app_theme_context_extension.dart';
import 'package:cube_system/ui/ui_kit/app_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TimetablePageMessageCard extends ConsumerWidget {
  const TimetablePageMessageCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7),
        color: context.colors.background,
        boxShadow: [
          BoxShadow(
            color: context.colors.shadow,
            blurRadius: 12,
            offset: const Offset(0, 1),
          )
        ],
      ),
      padding: const EdgeInsets.only(left: 12, right: 4, top: 4, bottom: 12),
      child: Material(
        type: MaterialType.transparency,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 8),
                  Text(
                    'Информация о ближайших выходных днях',
                    style: context.textStyles.subTitle.copyWith(
                        // color: context.colors.subduedText,
                        ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    '''Студенты и работники КубГУ отдыхают:
• 25 апреля
• 1, 8 и 9 мая''',
                    style: context.textStyles.smallSubTitle.copyWith(
                      color: context.colors.subduedText,
                    ),
                  ),
                  // const SizedBox(height: 8),
                  // Text(
                  //   'Кому интересно, приходите 26 апреля в 14.10 в ауд. А424. Для записи на семинар заполните форму.',
                  //   style: context.textStyles.smallSubTitle.copyWith(
                  //     color: context.colors.subduedText,
                  //   ),
                  // ),
                  // const SizedBox(height: 7),
                  // Text(
                  //   'https://forms.gle/3hRh6kQajuYBjbcW9',
                  //   style: context.textStyles.smallSubTitle.copyWith(
                  //     color: context.colors.primary,
                  //     decoration: TextDecoration.underline,
                  //   ),
                  // ),
                  const SizedBox(height: 12),
                  AppButton(
                    height: 32,
                    isExpanded: true,
                    style: AppButtonStyle.secondary,
                    onTap: () {},
                    text: 'Понятно',
                  )
                ],
              ),
            ),
            InkWell(
              onTap: () {},
              borderRadius: BorderRadius.circular(99),
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: Icon(
                  Icons.close_rounded,
                  color: context.colors.text,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
