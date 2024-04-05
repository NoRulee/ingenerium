import 'package:flutter/material.dart';
import 'package:injenerium_mobile_app/src/presentation/style/color_style.dart';
import 'package:injenerium_mobile_app/src/presentation/style/text_stryle.dart';
import 'package:injenerium_mobile_app/src/presentation/widgets/custom_app_bar.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: getSecondaryColor(context),
      body: SafeArea(
        child: Column(
          children: [
            const CustomAppBar(title: 'Настройки', arrowBack: true),
            const Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(height: 15.0),
                    _SettingsButton(data: 'Основное'),
                    _SettingsButton(data: 'Способы оплаты'),
                    _SettingsButton(data: 'Темы приложения'),
                  ],
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(color: getBackgroundColor(context)),
              child: const Column(
                children: [
                  _LicenchionButton(data: 'Лицензия', icon: Icons.description),
                  _LicenchionButton(data: 'О нас', icon: Icons.public),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _LicenchionButton extends StatelessWidget {
  final String data;
  final IconData icon;
  const _LicenchionButton({
    required this.data,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5),
      child: InkWell(
        onTap: () {},
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 12.0),
          child: Row(
            children: [
              Icon(icon),
              const SizedBox(width: 8),
              Text(data, style: getRegularTextStyle(context)),
            ],
          ),
        ),
      ),
    );
  }
}

class _SettingsButton extends StatelessWidget {
  final String data;
  const _SettingsButton({
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5),
      child: InkWell(
        onTap: () {},
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(data, style: getRegularTextStyle(context)),
              const Icon(Icons.keyboard_arrow_right_outlined),
            ],
          ),
        ),
      ),
    );
  }
}
