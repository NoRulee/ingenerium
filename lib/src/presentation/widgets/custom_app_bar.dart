import 'package:flutter/material.dart';
import 'package:injenerium_mobile_app/src/presentation/style/color_style.dart';
import 'package:injenerium_mobile_app/src/presentation/style/text_stryle.dart';
import 'package:injenerium_mobile_app/src/settings_page.dart';

class CustomAppBar extends StatelessWidget {
  final bool arrowBack;
  final bool settings;
  final String title;
  const CustomAppBar({
    super.key,
    required this.title,
    this.arrowBack = false,
    this.settings = false,
  });

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(color: getBackgroundColor(context)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 10.0),
        child: Row(
          children: [
            Visibility(
              visible: arrowBack,
              child: Padding(
                padding: const EdgeInsets.only(right: 24.0),
                child: InkWell(
                  onTap: Navigator.of(context).pop,
                  child: const Icon(Icons.arrow_back_outlined),
                ),
              ),
            ),
            Text(
              title,
              style: getTitleTextStyle(context),
            ),
            const Spacer(),
            Visibility(
              visible: settings,
              child: InkWell(
                onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(builder: (_) => const SettingsPage()),
                ),
                child: const Icon(Icons.settings_outlined),
              ),
            )
          ],
        ),
      ),
    );
  }
}
