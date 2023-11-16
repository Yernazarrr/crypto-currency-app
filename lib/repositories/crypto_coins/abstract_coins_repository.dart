import 'package:crypto_currency_app/repositories/crypto_coins/models/crypto_coin.dart';
import 'package:crypto_currency_app/repositories/crypto_coins/models/crypto_coin_details.dart';

abstract class AbstractCoinsRepository {
  Future<List<CryptoCoin>> getCoinsList();
  Future<CryptoCoinDetail> getCoinDetails(String currencyCode);
}
