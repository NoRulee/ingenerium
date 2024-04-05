import 'package:flutter/material.dart';
import 'package:injenerium_mobile_app/src/presentation/pages/payment_page.dart';
import 'package:injenerium_mobile_app/src/presentation/pages/profile_page.dart';
import 'package:injenerium_mobile_app/src/presentation/pages/schedule_page.dart';
import 'package:injenerium_mobile_app/src/presentation/widgets/custom_app_bar.dart';
import 'package:injenerium_mobile_app/src/presentation/widgets/custom_navigation_bar.dart';

class HomePageController extends ValueNotifier<int> {
  HomePageController() : super(0);
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final HomePageController controller = HomePageController();

    List<NavItem> _nabItems = [
      NavItem(title: 'Paymant', icon: Icons.abc, builder: (_) => const PaymentPage()),
      NavItem(title: 'Prifile', icon: Icons.abc, builder: (_) => const ProfilePage()),
      NavItem(title: 'Schedule', icon: Icons.abc, builder: (_) => const SchedulePage()),
    ];

    return Scaffold(
      body: SafeArea(
        child: ValueListenableBuilder(
          valueListenable: controller,
          builder: (context, value, child) {
            return Column(
              children: [
                const CustomAppBar(
                  title: 'Title',
                  settings: true,
                ),
                Expanded(
                  child: _nabItems.elementAt(controller.value).builder.call(context),
                ),
                CustomNavBar(
                  navItems: _nabItems,
                  selectedIndex: controller.value,
                  onChange: (index) {
                    controller.value = index;
                  },
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
