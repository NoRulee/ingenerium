import 'package:flutter/material.dart';
import 'package:injenerium_mobile_app/src/presentation/payment_page.dart';

/// Main application of the site.
class App extends StatelessWidget {
  /// Returns an instance of [App].
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Инженериум Мобильное Приложение',
      home: const PaymentPage(),
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: const ColorScheme.light(
          secondary: Color(0xFFF0F0F0),
          background: Color(0xffFFFFFF),
          primary: Color(0xff6C38FF),
          onBackground: Color(0xff101010),
        ),
      ),
    );
  }
}
