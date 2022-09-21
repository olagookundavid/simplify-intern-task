import 'package:flutter/material.dart';
import 'package:pavilion_rewards/UI/top_contents.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Pavilion Rewards',
      home: DashPage(),
    );
  }
}

class DashPage extends StatelessWidget {
  const DashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 13),
        child: Column(
          children: [
            const TopContents(),
            Row(
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
            ),
            Container(
              height: size.height * .09,
              width: double.infinity,
              decoration: const BoxDecoration(
                  color: Color(0xff5243D2),
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 6, vertical: 18),
                child: Row(
                  // crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Spacer(),
                    SizedBox(
                      height: 100,
                      width: 150,
                      child: Image(
                        fit: BoxFit.fill,
                        image: AssetImage('assets/reward.png'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}

class BalanceCard extends StatelessWidget {
  const BalanceCard({super.key, required this.image, required this.text1});
  final String image;
  final String text1;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * .1,
      width: size.width * .45,
      decoration: const BoxDecoration(
          color: Color(0xff5243D2),
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 18),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: 40,
              width: 30,
              child: Image(
                fit: BoxFit.fill,
                image: AssetImage(image),
              ),
            ),
            Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    text1,
                    style: const TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w600),
                  ),
                  const Text(
                    'N 2,342 : 00',
                    style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 10,
                        color: Colors.white30),
                  )
                ]),
            const Icon(
              Icons.visibility_off,
              size: 13,
              color: Colors.white38,
            )
          ],
        ),
      ),
    );
  }
}

//'assets/transfer.png'
//ImageIcon(
//   AssetImage(image!),
//   size: 20,
//   color: const Color(0xFFDADADA),
// )
