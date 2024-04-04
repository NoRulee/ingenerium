import 'package:flutter/material.dart';
import 'package:injenerium_mobile_app/src/presentation/payment_page.dart';
import 'package:injenerium_mobile_app/src/presentation/profile_page.dart';
import 'package:injenerium_mobile_app/src/presentation/schedule_page.dart';
import 'package:injenerium_mobile_app/src/presentation/style/text_stryle.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int index = 1;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      unselectedLabelStyle: getLightTextStyle(context),
      selectedLabelStyle: getLightTextStyle(context),
      onTap: (value) {
        setState(() {
          index = value;
        });
        switch (value) {
          case 0:
            () => Navigator.of(context).pushNamed('/payment');
          case 1:
            () => Navigator.of(context).pushNamed('/profile');
          case 2:
            () => Navigator.of(context).pushNamed('/schedule');
        }
      },
      currentIndex: index,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.list_alt_outlined),
          label: 'Оплата',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.account_circle_outlined),
          label: 'Профиль',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.calendar_month_outlined),
          label: 'Расписание',
        )
      ],
    );
  }
}
