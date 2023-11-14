import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CryptoCoinTile extends StatelessWidget {
  const CryptoCoinTile({
    super.key,
    required this.coinName,
  });

  final String coinName;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(
        'assets/img/bitcoin.svg',
        height: 30,
        width: 30,
      ),
      trailing: const Icon(
        Icons.arrow_right,
      ),
      title: Text(
        coinName,
        style: Theme.of(context).textTheme.bodyMedium,
      ),
      subtitle: Text(
        '453\$',
        style: Theme.of(context).textTheme.labelSmall,
      ),
      onTap: () {
        Navigator.of(context).pushNamed('/coin', arguments: coinName);
      },
    );
  }
}
