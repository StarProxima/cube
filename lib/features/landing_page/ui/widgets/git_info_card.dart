import 'package:cube_system/features/analytics/logger.dart';
import 'package:cube_system/features/landing_page/ui/widgets/landing_service_card.dart';
import 'package:cube_system/styles/app_theme_context_extension.dart';
import 'package:flutter/material.dart';

class GitInfoCard extends StatelessWidget {
  const GitInfoCard({
    super.key,
    required this.launchFrom,
  });

  final String launchFrom;

  @override
  Widget build(BuildContext context) {
    return LandingServiceCard(
      title: 'GitHub',
      subTitle: Text(
        'Это приложение с открытым исходным кодом',
        style: context.textStyles.smallSubTitle.copyWith(
          color: context.colors.subduedText.withOpacity(0.65),
        ),
      ),
      description:
          'Тут можно посмотреть код, предложить новые функции и оставить сообщение об ошибке',
      linkName: 'github.com/StarProxima/cube',
      uri: Uri.parse('https://github.com/StarProxima/cube'),
      onLaunch: (uri) => logger.launch(uri: uri, launchFrom: launchFrom),
    );
  }
}
