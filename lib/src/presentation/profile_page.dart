import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:injenerium_mobile_app/src/presentation/style/color_style.dart';
import 'package:injenerium_mobile_app/src/presentation/style/text_stryle.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(color: Color(0xffD9D9D9)),
          ),
          Padding(
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
                ),
                SizedBox(
                  width: 21,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Имя Фамилия',
                      style: getBoldTextStyle(context),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: getPrimaryColor(context),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Text(
                          'Группа 28',
                          style: getLightTextStyle(context),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 40.0,
          // vertical: 20.0,
        ),
        child: Text(
          'Профиль',
          style: getTitleTextStyle(context),
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20.0,
          ),
          child: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.settings_outlined,
            ),
          ),
        )
      ],
      backgroundColor: getBackgroundColor(context),
    );
  }

  @override
  Size get preferredSize => AppBar().preferredSize;
}
