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
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: getBackgroundColor(context),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        children: [
                          Text('Робототехника', style: getMediumTextStyle(context)),
                          const SizedBox(height: 5.0),
                          Text('Цена за одно занятие - 1000р.', style: getLightTextStyle(context)),
                          //! переключающие кнопки
                          const SizedBox(height: 5.0),
                          Text('Активные бонусы', style: getMediumTextStyle(context)),
                          Text(
                            '· На третий курс  - 15% \n· Два ребенка из одной семьи - 10%',
                            style: getLightTextStyle(context),
                          ),
                          const SizedBox(height: 5.0),
                          Text('Экономия - 1000р.', style: getMediumTextStyle(context)),
                        ],
                      ),
                      Text('К оплате - 3000р.', style: getRegularTextStyle(context)),
                      SizedBox(
                        width: double.infinity,
                        child: FilledButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(getPrimaryColor(context)),
                          ),
                          onPressed: () {},
                          child: Text('Оплатить', style: getRegularTextStyle(context, color: Colors.white)),
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
