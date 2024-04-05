import 'package:flutter/material.dart';
import 'package:injenerium_mobile_app/src/presentation/pages/payment_page.dart';
import 'package:injenerium_mobile_app/src/presentation/pages/profile_page.dart';
import 'package:injenerium_mobile_app/src/presentation/pages/schedule_page.dart';
import 'package:injenerium_mobile_app/src/presentation/style/color_style.dart';
import 'package:injenerium_mobile_app/src/presentation/style/text_stryle.dart';

class CustomNavBar extends StatefulWidget {
  const CustomNavBar({Key? key}) : super(key: key);

  @override
  State<CustomNavBar> createState() => _CustomNavBarState();
}

class _CustomNavBarState extends State<CustomNavBar> {
  int _selectedIndex = 0;

  void _onTap(int index) {
    if (_selectedIndex != index) {
      setState(() {
        _selectedIndex = index;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    List<_NavButton> _navButtons = [
      _NavButton(
        icon: Icons.list_alt_outlined,
        data: 'Оплата',
        textStyle: getLightTextStyle(context),
        isSelected: _selectedIndex == 0,
        onTap: () {
          _onTap(0);
          Navigator.of(context).push(MaterialPageRoute(builder: (_) => const PaymentPage()));
        },
      ),
      _NavButton(
        icon: Icons.account_circle_outlined,
        data: 'Профиль',
        textStyle: getLightTextStyle(context),
        isSelected: _selectedIndex == 1,
        onTap: () {
          _onTap(1);
          Navigator.of(context).push(MaterialPageRoute(builder: (_) => const ProfilePage()));
        },
      ),
      _NavButton(
        icon: Icons.calendar_month_outlined,
        data: 'Расписание',
        textStyle: getLightTextStyle(context),
        isSelected: _selectedIndex == 2,
        onTap: () {
          _onTap(2);
          Navigator.of(context).push(MaterialPageRoute(builder: (_) => const SchedulePage()));
        },
      ),
    ];

    return DecoratedBox(
      decoration: BoxDecoration(color: getBackgroundColor(context)),
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Row(
          children: _navButtons,
        ),
      ),
    );
  }
}

class _NavButton extends StatelessWidget {
  final VoidCallback onTap;
  final IconData icon;
  final String data;
  final TextStyle textStyle;
  final bool isSelected;

  const _NavButton({
    required this.icon,
    required this.data,
    required this.textStyle,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    Color iconColor = isSelected ? getPrimaryColor(context) : getOnBackgroundColor(context);
    Color textColor = isSelected ? getPrimaryColor(context) : getOnBackgroundColor(context);
    return Expanded(
      child: InkWell(
        onTap: onTap,
        child: Column(
          children: [
            Icon(icon, color: iconColor),
            Text(data, style: textStyle.copyWith(color: textColor)),
          ],
        ),
      ),
    );
  }
}
