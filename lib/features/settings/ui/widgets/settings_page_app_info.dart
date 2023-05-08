part of '../settings_page.dart';

class _SettingsPageAppInfo extends ConsumerWidget {
  const _SettingsPageAppInfo();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        Consumer(
          builder: (context, ref, _) {
            final packageInfo = ref.watch(packageInfoStateHolder);

            final isSecret = ref.watch(
              appSettingsStateHolder.select(
                (settings) =>
                    settings.lessonColorsMode.isAccent &&
                    !settings.lessonCardLessonTypePosition.isOnIndicator &&
                    settings.lessonCardRecessDisplayCondition.isAlways,
              ),
            );

            return packageInfo.when(
              data: (packageInfo) => AppTooltip(
                message: isSecret ? kSecretString2 : '',
                textStyle: context.textStyles.smallSubTitle
                    .copyWith(fontSize: 7, fontWeight: FontWeight.w900),
                child: Text(
                  "Куб.Расписание v${packageInfo.version}+${packageInfo.buildNumber}",
                  style: context.textStyles.smallSubTitle.copyWith(
                    color: context.colors.subduedText,
                  ),
                ),
              ),
              loading: () => const SizedBox.shrink(),
              error: (error, stackTrace) => const SizedBox.shrink(),
            );
          },
        ),
        const SizedBox(height: 8),
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: 'Developed using ',
                style: context.textStyles.smallSubTitle.copyWith(
                  color: context.colors.subduedText,
                ),
              ),
              const WidgetSpan(
                child: AppTooltip(
                  message: 'Flutter',
                  child: FlutterLogo(size: 16),
                ),
              ),
              const TextSpan(text: ' with '),
              const WidgetSpan(
                child: AppTooltip(
                  message: 'Love',
                  child: Icon(
                    Icons.favorite,
                    size: 16,
                    color: Colors.red,
                  ),
                ),
              ),
              const TextSpan(text: ' by StarProxima'),
            ],
          ),
          style: context.textStyles.smallSubTitle.copyWith(
            color: context.colors.subduedText,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          'Powered by КУБ',
          style: context.textStyles.smallSubTitle.copyWith(
            color: context.colors.subduedText,
          ),
        ),
      ],
    );
  }
}
