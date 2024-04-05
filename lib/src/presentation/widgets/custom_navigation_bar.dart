import 'package:flutter/material.dart';
import 'package:injenerium_mobile_app/src/presentation/style/color_style.dart';

class NavItem {
  const NavItem({
    required this.title,
    required this.icon,
    required this.builder,
  });

  final String title;
  final IconData icon;
  final Widget Function(BuildContext) builder;
}

class CustomNavBar extends StatelessWidget {
  const CustomNavBar({
    required this.navItems,
    required this.selectedIndex,
    this.onChange,
    super.key,
  });

  final List<NavItem> navItems;
  final int selectedIndex;
  final void Function(int)? onChange;

  @override
  Widget build(BuildContext context) {
    // List<_NavButton> _navButtons = [
    //   _NavButton(
    //     icon: Icons.list_alt_outlined,
    //     data: 'Оплата',
    //     textStyle: getLightTextStyle(context),
    //     isSelected: selectedIndex == 0,
    //     onTap: () {},
    //   ),
    //   _NavButton(
    //     icon: Icons.account_circle_outlined,
    //     data: 'Профиль',
    //     textStyle: getLightTextStyle(context),
    //     isSelected: selectedIndex == 1,
    //     onTap: () {},
    //   ),
    //   _NavButton(
    //     icon: Icons.calendar_month_outlined,
    //     data: 'Расписание',
    //     textStyle: getLightTextStyle(context),
    //     isSelected: selectedIndex == 2,
    //     onTap: () {},
    //   ),
    // ];

    return DecoratedBox(
      decoration: BoxDecoration(color: getBackgroundColor(context)),
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Row(
          children: List.generate(
            navItems.length,
            (index) {
              final e = navItems.elementAt(index);
              return _NavButton(
                icon: e.icon,
                data: e.title,
                isSelected: selectedIndex == index,
                onTap: () {
                  onChange?.call(index);
                },
              );
            },
          ),
        ),
      ),
    );
  }
}

class _NavButton extends StatelessWidget {
  final VoidCallback onTap;
  final IconData icon;
  final String data;

  final bool isSelected;

  const _NavButton({
    required this.icon,
    required this.data,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    Color iconColor = isSelected ? getPrimaryColor(context) : getOnBackgroundColor(context);

    return Expanded(
      child: InkWell(
        onTap: onTap,
        child: Column(
          children: [
            Icon(icon, color: iconColor),
            Text(data),
          ],
        ),
      ),
    );
  }
}
