import 'package:flutter/material.dart';
import 'package:injenerium_mobile_app/src/presentation/widgets/custom_app_bar.dart';
import 'package:injenerium_mobile_app/src/presentation/widgets/custom_navigation_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void _titles(int index) {
    if (_selectedIndex != index) {
      setState(
        () {
          _selectedIndex = index;
        },
      );
    }
  }

  List<String> listTitles = ['Оплата, Профиль, Расписание'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            CustomAppBar(
              title: '',
              settings: true,
            ),
            CustomNavBar(),
          ],
        ),
      ),
    );
  }
}
