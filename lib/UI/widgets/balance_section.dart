import 'package:flutter/material.dart';
import 'package:pavilion_rewards/UI/widgets/balance_cards.dart';

class BalanceCards extends StatelessWidget {
  const BalanceCards({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        BalanceCard(
          image: 'assets/wallet.png',
          text1: 'Wallet Balance',
        ),
        BalanceCard(
          image: 'assets/hand.png',
          text1: 'Reward Balance',
        )
      ],
    );
  }
}
