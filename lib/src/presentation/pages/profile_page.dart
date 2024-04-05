import 'package:flutter/material.dart';
import 'package:injenerium_mobile_app/src/presentation/pages/galery_page.dart';
import 'package:injenerium_mobile_app/src/presentation/style/color_style.dart';
import 'package:injenerium_mobile_app/src/presentation/style/text_stryle.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

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
                    _NameProfileAndAvatar(),
                    _ProgressBarWithTitle(),
                    _Galery(),
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

class _Galery extends StatelessWidget {
  const _Galery();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Row(
        children: [
          Text(
            'Галерея',
            style: getMediumTextStyle(context),
          ),
          const Spacer(),
          InkWell(
            onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => const GaleryPage())),
            child: const Icon(Icons.keyboard_arrow_right_outlined),
          ),
        ],
      ),
    );
  }
}

class _ProgressBarWithTitle extends StatelessWidget {
  const _ProgressBarWithTitle();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Посещение', style: getMediumTextStyle(context)),
          const SizedBox(height: 20),
          const _ProgressBar(name: 'Биотехнологии'),
          const SizedBox(height: 20.0),
          const _ProgressBar(name: 'Робототехника'),
        ],
      ),
    );
  }
}

class _ProgressBar extends StatelessWidget {
  final String name;
  const _ProgressBar({
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: getBackgroundColor(context),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(name, style: getRegularTextStyle(context)),
            const SizedBox(height: 21),
            Expanded(
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  _ProgressButton(),
                  _ProgressButton(),
                  _ProgressButton(),
                  _ProgressButton(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _ProgressButton extends StatelessWidget {
  const _ProgressButton();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8),
      child: Container(
        width: 80,
        height: 56,
        decoration: BoxDecoration(
          color: getSecondaryColor(context),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('12 Фев 2024', style: getThinTextStyle(context, color: Colors.black)),
            const SizedBox(
              height: 4,
            ),
            Text('Н', style: getRegularTextStyle(context)),
          ],
        ),
      ),
    );
  }
}

class _NameProfileAndAvatar extends StatelessWidget {
  const _NameProfileAndAvatar();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 64.0,
            height: 64.0,
            decoration: BoxDecoration(
              color: getBackgroundColor(context),
              border: Border.all(color: getPrimaryColor(context)),
              borderRadius: BorderRadius.circular(64),
            ),
            child: Icon(
              Icons.camera_alt_outlined,
              color: getPrimaryColor(context),
            ),
          ),
          const SizedBox(
            width: 21,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Имя Фамилия', style: getMediumTextStyle(context)),
              Container(
                decoration: BoxDecoration(
                  color: getPrimaryColor(context),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(
                    'Группа 28',
                    style: getLightTextStyle(context, color: Colors.white),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
