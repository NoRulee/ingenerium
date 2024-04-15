import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:injenerium_mobile_app/src/presentation/style/color_style.dart';
import 'package:injenerium_mobile_app/src/presentation/style/text_stryle.dart';
import 'package:injenerium_mobile_app/src/presentation/widgets/custom_app_bar.dart';

class GaleryPage extends StatelessWidget {
  const GaleryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: getSecondaryColor(context),
      body: const SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    CustomAppBar(title: 'Галерея', arrowBack: true),
                    _GalerySelection(date: '18 мар. 2024'),
                    _GalerySelection(date: '10 мар. 2024'),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _GalerySelection extends StatelessWidget {
  final String date;

  const _GalerySelection({required this.date});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            date,
            style: getMediumTextStyle(context),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 166,
                height: 90,
                decoration: BoxDecoration(
                  color: getBackgroundColor(context),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              Container(
                width: 166,
                height: 90,
                decoration: BoxDecoration(
                  color: getBackgroundColor(context),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: 104,
                height: 160,
                decoration: BoxDecoration(
                  color: getBackgroundColor(context),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              Container(
                width: 104,
                height: 160,
                decoration: BoxDecoration(
                  color: getBackgroundColor(context),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              Container(
                width: 104,
                height: 160,
                decoration: BoxDecoration(
                  color: getBackgroundColor(context),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
