import 'package:flutter/material.dart';
import 'features/crypto_coin/crypto_coin.dart';
import 'features/crypto_list/crypto_list.dart';

void main(List<String> args) {
  runApp(const CryptoCurrencyApp());
}

class CryptoCurrencyApp extends StatelessWidget {
  const CryptoCurrencyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Crypto Currency App',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
        scaffoldBackgroundColor: const Color.fromARGB(255, 31, 31, 31),
        appBarTheme: const AppBarTheme(
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),
          backgroundColor: Color.fromARGB(255, 31, 31, 31),
        ),
        dividerColor: Colors.white24,
        listTileTheme: const ListTileThemeData(
          iconColor: Colors.white,
        ),
        textTheme: TextTheme(
          bodyMedium: const TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),
          labelSmall: TextStyle(
            color: Colors.white.withOpacity(0.6),
            fontWeight: FontWeight.w500,
            fontSize: 14,
          ),
        ),
      ),
      routes: {
        '/coin': (context) => const CryptoCoinScreen(),
      },
      home: const CryptoListScreen(),
    );
  }
}
