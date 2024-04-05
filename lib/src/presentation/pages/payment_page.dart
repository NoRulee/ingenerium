import 'package:flutter/material.dart';
import 'package:injenerium_mobile_app/src/presentation/pages/payment_calculation_page.dart';
import 'package:injenerium_mobile_app/src/presentation/style/color_style.dart';
import 'package:injenerium_mobile_app/src/presentation/style/text_stryle.dart';
import 'package:injenerium_mobile_app/src/presentation/widgets/custom_app_bar.dart';
import 'package:injenerium_mobile_app/src/presentation/widgets/custom_navigation_bar.dart';

class PaymentPage extends StatelessWidget {
  const PaymentPage({super.key});

  @override
  Widget build(BuildContext context) {
    const bool payed = false;
    const bool notPay = true;

    return Scaffold(
      backgroundColor: getSecondaryColor(context),
      body: const SafeArea(
        child: Column(
          children: [
            CustomAppBar(title: 'Оплата', settings: true),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    _CustomExpTile(
                      vis: payed,
                      title: 'Оплаченые',
                      titleInBox: 'Биотехнологии',
                      onfoInBox: 'Оплачено до 31.04.2024',
                      open: true,
                    ),
                    _CustomExpTile(
                      open: false,
                      vis: notPay,
                      title: 'Ждут оплаты',
                      titleInBox: 'Робототехника',
                      onfoInBox: 'Следующее занятие - 24.04.2024',
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

class _CustomExpTile extends StatelessWidget {
  final String title;
  final bool vis;
  final String titleInBox;
  final String onfoInBox;
  final bool open;

  const _CustomExpTile({
    required this.vis,
    required this.title,
    required this.titleInBox,
    required this.onfoInBox,
    required this.open,
  });

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(dividerColor: Colors.transparent),
      child: ExpansionTile(
        title: Text(
          title,
          style: getLightTextStyle(context),
        ),
        initiallyExpanded: open,
        maintainState: true,
        iconColor: Colors.black,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                _CustomPaymentContainer(
                  title: titleInBox,
                  info: onfoInBox,
                  vis: vis,
                ),
                const SizedBox(height: 10),
                _CustomPaymentContainer(
                  title: titleInBox,
                  info: onfoInBox,
                  vis: vis,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class _CustomPaymentContainer extends StatelessWidget {
  final String title;
  final String info;
  final bool vis;

  const _CustomPaymentContainer({
    required this.title,
    required this.info,
    required this.vis,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: getBackgroundColor(context),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: getMediumTextStyle(context),
            ),
            const SizedBox(height: 8.0),
            Text(
              info,
              style: getLightTextStyle(context),
            ),
            const SizedBox(height: 8.0),
            Visibility(
              visible: vis,
              child: SizedBox(
                width: double.infinity,
                child: FilledButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(getPrimaryColor(context)),
                  ),
                  onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => const PaymentCalcPage())),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      'Оплатить',
                      style: getRegularTextStyle(context, color: Colors.white),
                    ),
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
