import 'package:flutter/material.dart';
import 'package:injenerium_mobile_app/src/presentation/style/color_style.dart';
import 'package:injenerium_mobile_app/src/presentation/widgets/custom_app_bar.dart';

class GaleryPage extends StatelessWidget {
  const GaleryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: getSecondaryColor(context),
      body: const CustomAppBar(title: 'Галерея', arrowBack: true),
    );
  }
}
