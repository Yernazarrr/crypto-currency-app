import 'package:crypto_currency_app/crypto_currency_app.dart';
import 'package:crypto_currency_app/repositories/crypto_coins/crypto_coins.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

void main(List<String> args) {
  GetIt.I.registerLazySingleton<AbstractCoinsRepository>(
      () => CryptoCoinsRepository(dio: Dio()));
  runApp(const CryptoCurrencyApp());
}
