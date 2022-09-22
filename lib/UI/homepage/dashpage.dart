import 'package:flutter/material.dart';
import 'package:pavilion_rewards/UI/widgets/balance_section.dart';
import 'package:pavilion_rewards/UI/widgets/bottom_nav_bar.dart';
import 'package:pavilion_rewards/UI/widgets/height_sizer.dart';
import 'package:pavilion_rewards/UI/widgets/redeem_now.dart';
import 'package:pavilion_rewards/UI/widgets/top_contents.dart';
import 'package:pavilion_rewards/UI/widgets/transaction_history.dart';
import 'package:pavilion_rewards/UI/widgets/virtual_cards.dart';

class DashPage extends StatelessWidget {
  const DashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
        backgroundColor: const Color(0xffF7F7FE),
        body: SingleChildScrollView(
          child: SafeArea(
              child: Column(
            children: [
              Container(
                height: 200,
                decoration: const BoxDecoration(
                  color: Color(0xffFFFFFF),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(24.0),
                      bottomRight: Radius.circular(24.0)),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: width * .05),
                  child: Column(
                    children: [
                      HSizer(
                        height: height * 0.03325,
                      ),
                      const TopContents(),
                      HSizer(
                        height: height * 0.046108,
                      ),
                      const BalanceCards(),
                      const HSizer(
                        height: 40,
                      ),
                    ],
                  ),
                ),
              ),
              const HSizer(
                height: 25,
              ),
              const RedeemNowContainer(),
              const HSizer(
                height: 25,
              ),
              const VirtualCard(),
              const HSizer(
                height: 25,
              ),
              const TransactionHistory(),
            ],
          )),
        ),
        bottomNavigationBar: const BottomNavBar());
  }
}
