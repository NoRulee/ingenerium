import 'package:flutter/material.dart';
import 'package:injenerium_mobile_app/src/presentation/style/color_style.dart';
import 'package:injenerium_mobile_app/src/presentation/style/text_stryle.dart';

class SchedulePage extends StatelessWidget {
  const SchedulePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: getSecondaryColor(context),
      body: const SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    _CustomScheduleContainer(
                      title: 'Биотехнологии',
                      schedule: '· Понедельник, 12:30 \n· Вторник, 12:30 \n· Четверг, 14:00 \n· Суббота, 14:00 \n· Воскресенье, 14:00',
                    ),
                    _CustomScheduleContainer(
                      title: 'Робототехника',
                      schedule: '· Суббота, 9:00 \n· Воскресенье, 9:00',
                    ),
                  ],
                ),
              ),
            ),
            // CustomNavBar(),
          ],
        ),
      ),
    );
  }
}

class _CustomScheduleContainer extends StatelessWidget {
  final String title;
  final String schedule;

  const _CustomScheduleContainer({required this.title, required this.schedule});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
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
              Text(title, style: getRegularTextStyle(context)),
              const SizedBox(height: 10.0),
              Text('Время посещения', style: getLightTextStyle(context)),
              const SizedBox(height: 10.0),
              Text(schedule, style: getLightTextStyle(context)),
            ],
          ),
        ),
      ),
    );
  }
}
