import 'package:flutter/material.dart';

class RedeemNowContainer extends StatelessWidget {
  const RedeemNowContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: width * .05),
      child: Container(
        height: 100,
        width: double.infinity,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              stops: [
                0.1,
                0.5,
              ],
              colors: [
                Color(0xff4d1d85),
                Color(0xff5243D2),
              ],
            ),
            borderRadius: BorderRadius.all(Radius.circular(10))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(left: width * 8 / 375, top: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Congratulations!!',
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.w700),
                    ),
                    RichText(
                      textAlign: TextAlign.start,
                      softWrap: true,
                      text: const TextSpan(
                        text: 'You’ve completed all your tasks for'
                            ' the week and you won ',
                        style: TextStyle(fontSize: 10),
                        children: <TextSpan>[
                          TextSpan(
                              text: '150 points.',
                              style: TextStyle(color: Colors.orange)),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(4)),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: width * 0.088, vertical: 4),
                        child: Text(
                          'Redeem Now!',
                          style: TextStyle(
                            fontSize: width * 0.025,
                            fontWeight: FontWeight.w600,
                            color: const Color(0xff5243D2),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 70,
              width: 100,
              child: Image(
                fit: BoxFit.cover,
                image: AssetImage('assets/reward.png'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
