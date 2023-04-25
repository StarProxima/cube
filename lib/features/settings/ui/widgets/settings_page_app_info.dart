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
            return packageInfo.when(
              data: (packageInfo) => Text(
                "Куб.Расписание v${packageInfo.version}+${packageInfo.buildNumber}",
                style: context.textStyles.smallSubTitle.copyWith(
                  color: context.colors.subduedText,
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
                text: 'Built using ',
                style: context.textStyles.smallSubTitle.copyWith(
                  color: context.colors.subduedText,
                ),
              ),
              const WidgetSpan(
                child: FlutterLogo(size: 16),
              ),
              const TextSpan(text: ' with '),
              const WidgetSpan(
                child: Icon(
                  Icons.favorite,
                  size: 16,
                  color: Colors.red,
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
