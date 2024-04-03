import 'package:flutter/material.dart';
import 'package:injenerium_mobile_app/src/presentation/style/color_style.dart';
import 'package:injenerium_mobile_app/src/presentation/style/text_stryle.dart';

class CustomNavBar extends StatelessWidget {
  const CustomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(color: getBackgroundColor(context)),
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Row(
          children: [
            _NavButton(
              icon: Icons.list_alt_outlined,
              data: 'Оплата',
              textStyle: getLightTextStyle(context),
            ),
            _NavButton(
              icon: Icons.account_circle_outlined,
              data: 'Профиль',
              textStyle: getLightTextStyle(context),
            ),
            _NavButton(
              icon: Icons.calendar_month_outlined,
              data: 'Расписание',
              textStyle: getLightTextStyle(context),
            ),
          ],
        ),
      ),
    );
  }
}

class _NavButton extends StatelessWidget {
  final IconData icon;
  final String data;
  final TextStyle textStyle;

  const _NavButton({
    required this.icon,
    required this.data,
    required this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: () {},
        child: Column(
          children: [
            Icon(icon),
            Text(data, style: textStyle),
          ],
        ),
      ),
    );
  }
}
