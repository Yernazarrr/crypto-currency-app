import 'package:crypto_currency_app/features/crypto_list/crypto_list.dart';
import 'package:crypto_currency_app/router/router.dart';
import 'package:crypto_currency_app/theme/theme.dart';
import 'package:flutter/material.dart';

class CryptoCurrencyApp extends StatelessWidget {
  const CryptoCurrencyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Crypto Currency App',
      theme: darkTheme,
      routes: routes,
      home: const CryptoListScreen(),
    );
  }
}
