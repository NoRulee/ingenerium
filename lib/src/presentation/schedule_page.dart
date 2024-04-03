import 'package:flutter/material.dart';
import 'package:injenerium_mobile_app/src/presentation/style/color_style.dart';
import 'package:injenerium_mobile_app/src/presentation/style/text_stryle.dart';
import 'package:injenerium_mobile_app/src/presentation/widgets/custom_app_bar.dart';

class SchedulePage extends StatelessWidget {
  const SchedulePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: getSecondaryColor(context),
      body: SafeArea(
        child: Column(
          children: [
            const CustomAppBar(title: 'Расписание', settings: true),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: getBackgroundColor(context),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Биотехнологии',
                        style: getRegularTextStyle(context),
                      ),
                      Text(
                        'Время посещения',
                        style: getLightTextStyle(context),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Text(
                              'data',
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
