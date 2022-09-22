import 'package:flutter/material.dart';

class BalanceCard extends StatelessWidget {
  const BalanceCard({super.key, required this.image, required this.text1});
  final String image;
  final String text1;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: 50,
      width: size.width * 0.43,
      decoration: const BoxDecoration(
          color: Color(0xff5243D2),
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: size.width * 0.02, vertical: 10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            SizedBox(
              height: 40,
              width: 30,
              child: Image(
                fit: BoxFit.fill,
                image: AssetImage(image),
              ),
            ),
            SizedBox(
              width: size.width * 0.007,
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          text1,
                          style: const TextStyle(
                              fontSize: 12,
                              color: Colors.white,
                              fontWeight: FontWeight.w600),
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
                    size: 15,
                    color: Colors.white38,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
