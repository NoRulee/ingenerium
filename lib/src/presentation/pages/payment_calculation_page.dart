import 'package:flutter/material.dart';

import 'package:injenerium_mobile_app/src/presentation/style/color_style.dart';
import 'package:injenerium_mobile_app/src/presentation/style/text_stryle.dart';
import 'package:injenerium_mobile_app/src/presentation/widgets/custom_app_bar.dart';

class PaymentCalcPage extends StatelessWidget {
  const PaymentCalcPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: getSecondaryColor(context),
      body: SafeArea(
        child: Column(
          children: [
            const CustomAppBar(title: 'Оплата', arrowBack: true),
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  width: double.infinity,
                  margin: const EdgeInsets.all(10.0),
                  padding: const EdgeInsets.all(20.0),
                  decoration: BoxDecoration(
                    color: getBackgroundColor(context),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(10.0),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Робототехника',
                        style: getMediumTextStyle(context),
                      ),
                      const SizedBox(height: 5.0),
                      Text(
                        'Цена за одно занятие - 1000р.',
                        style: getLightTextStyle(context),
                      ),
                      const _ChooseButton(
                        textData: 'Оплатить одно занятие',
                        textDatesData: 'Дата проведения - 12.12.2012',
                      ),
                      const _ChooseButton(textData: 'Оплатить месяц', textDatesData: 'Дата проведения занятий: \n - 12.12.2012 \n - 12.12.2012 \n - 12.12.2012 \n - 12.12.2012'),
                      const SizedBox(height: 5.0),
                      Text(
                        'Активные бонусы',
                        style: getMediumTextStyle(context),
                      ),
                      Text(
                        '· На третий курс  - 15% \n· Два ребенка из одной семьи - 10%',
                        style: getLightTextStyle(context),
                      ),
                      const SizedBox(height: 5.0),
                      Text(
                        'Экономия - 1000р.',
                        style: getMediumTextStyle(context),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 80,
              margin: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                color: getBackgroundColor(context),
                borderRadius: const BorderRadius.all(
                  Radius.circular(10.0),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'К оплате - 3000р.',
                    style: getRegularTextStyle(context),
                  ),
                  FilledButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(
                        getPrimaryColor(context),
                      ),
                    ),
                    onPressed: () {},
                    child: Text(
                      'Оплатить',
                      style: getRegularTextStyle(context, color: getBackgroundColor(context)),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _ChooseButton extends StatefulWidget {
  final String textData;
  final String textDatesData;
  final Function()? onTap;
  const _ChooseButton({
    required this.textData,
    required this.textDatesData,
    this.onTap,
  });

  @override
  State<_ChooseButton> createState() => __ChooseButtonState();
}

class __ChooseButtonState extends State<_ChooseButton> {
  bool isButtonPressed = false;

  IconData getIconData() {
    return isButtonPressed ? Icons.radio_button_checked : Icons.radio_button_off;
  }

  Color getIconColor() {
    return isButtonPressed ? getBackgroundColor(context) : getPrimaryColor(context);
  }

  Color getButtonColor() {
    return isButtonPressed ? getPrimaryColor(context) : getBackgroundColor(context);
  }

  Color getTextColor() {
    return isButtonPressed ? getBackgroundColor(context) : getOnBackgroundColor(context);
  }

  @override
  Widget build(BuildContext context) {
    void onButtonTap() {
      setState(() {
        isButtonPressed = !isButtonPressed;
      });

      widget.onTap;
    }

    return InkWell(
      onTap: onButtonTap,
      child: Container(
        margin: const EdgeInsets.only(top: 10.0),
        padding: const EdgeInsets.symmetric(
          vertical: 10.0,
          horizontal: 20.0,
        ),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(
            Radius.circular(10.0),
          ),
          border: Border.all(
            color: getPrimaryColor(context),
            width: 1.0,
          ),
          color: getButtonColor(),
        ),
        child: Row(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(
              getIconData(),
              color: getIconColor(),
            ),
            const SizedBox(
              width: 20.0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.textData,
                  style: getRegularTextStyle(
                    context,
                    color: getTextColor(),
                  ),
                ),
                Text(
                  widget.textDatesData,
                  style: getThinTextStyle(
                    context,
                    color: getTextColor(),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
