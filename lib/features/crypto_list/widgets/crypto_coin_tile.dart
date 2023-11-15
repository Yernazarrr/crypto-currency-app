import 'package:crypto_currency_app/repositories/models/crypto_coin.dart';
import 'package:flutter/material.dart';

class CryptoCoinTile extends StatelessWidget {
  const CryptoCoinTile({
    super.key,
    required this.coin,
  });

  final CryptoCoin coin;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.network(
        coin.imageUrl,
        height: 30,
        width: 30,
      ),
      trailing: const Icon(
        Icons.arrow_right,
      ),
      title: Text(
        coin.name,
        style: Theme.of(context).textTheme.bodyMedium,
      ),
      subtitle: Text(
        '${coin.priceInUSD} \$',
        style: Theme.of(context).textTheme.labelSmall,
      ),
      onTap: () {
        Navigator.of(context).pushNamed('/coin', arguments: coin);
      },
    );
  }
}
