import 'dart:async';

import 'package:crypto_currency_app/features/crypto_list/bloc/crypto_list_bloc.dart';
import 'package:crypto_currency_app/features/crypto_list/widgets/widgets.dart';
import 'package:crypto_currency_app/repositories/crypto_coins/crypto_coins.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class CryptoListScreen extends StatefulWidget {
  const CryptoListScreen({super.key});

  @override
  State<CryptoListScreen> createState() => _CryptoListScreenState();
}

class _CryptoListScreenState extends State<CryptoListScreen> {
  final _cryptoListBloc = CryptoListBloc(GetIt.I<AbstractCoinsRepository>());

  @override
  void initState() {
    super.initState();
    final compeleter = Completer();
    _cryptoListBloc.add(LoadCryptoList(compeleter));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Crypto Currencies List'),
        centerTitle: true,
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          final compeleter = Completer();
          _cryptoListBloc.add(
            LoadCryptoList(compeleter),
          );
          return compeleter.future;
        },
        child: BlocBuilder<CryptoListBloc, CryptoListState>(
          bloc: _cryptoListBloc,
          builder: (context, state) {
            if (state is CryptoListLoaded) {
              return ListView.separated(
                padding: const EdgeInsets.only(top: 16),
                separatorBuilder: (context, index) => const Divider(),
                itemBuilder: (context, index) {
                  final coin = state.coinsList[index];
                  return CryptoCoinTile(coin: coin);
                },
                itemCount: state.coinsList.length,
              );
            }
            if (state is CryptoListLoadFailure) {
              return Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Somthing went wrong!',
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      Text(
                        'Please try again later',
                        style: Theme.of(context)
                            .textTheme
                            .labelSmall
                            ?.copyWith(fontSize: 16),
                      ),
                      const SizedBox(height: 30),
                      TextButton(
                        onPressed: () async {
                          final compeleter = Completer();
                          _cryptoListBloc.add(LoadCryptoList(compeleter));
                          return compeleter.future;
                        },
                        child: const Text('Try again'),
                      )
                    ]),
              );
            }
            return const Center(
              child: CircularProgressIndicator(),
            );
          },
        ),
      ),
    );
  }
}
