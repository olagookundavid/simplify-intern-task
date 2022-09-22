import 'package:flutter/material.dart';
import 'package:pavilion_rewards/UI/widgets/height_sizer.dart';

class VirtualCard extends StatelessWidget {
  const VirtualCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: width * .05),
      child: SizedBox(
        height: height * .2,
        width: width,
        child: ListView.separated(
            separatorBuilder: (context, index) => const SizedBox(
                  width: 15,
                ),
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: 3,
            itemBuilder: (context, index) {
              return Container(
                height: height * .2,
                width: width * .8,
                decoration: const BoxDecoration(
                    color: Color(0xff5243D2),
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage('assets/cardBK.png')),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: width * .05, vertical: height * .02),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Virtual',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w700,
                                color: Colors.white),
                          ),
                          const HSizer(height: 10),
                          const Text(
                            '1234   5678   9012   3456',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w700,
                                color: Colors.white),
                          ),
                          const HSizer(height: 7),
                          RowText(
                              text1: 'Expiry date',
                              text2: 'CVV',
                              style: TextStyle(
                                  fontSize: 8,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white.withOpacity(.8)),
                              width: 50),
                          const HSizer(height: 5),
                          RowText(
                            text1: '12/34',
                            text2: '123',
                            width: 55,
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w700,
                                color: Colors.white.withOpacity(.8)),
                          ),
                          const HSizer(height: 7),
                          const Text(
                            'Janet  M  Doe',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w700,
                                color: Colors.white),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: const [
                          Image(
                              image: AssetImage('assets/mastercardcircle.png')),
                          HSizer(height: 5),
                          Text(
                            'mastercard',
                            style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w700,
                                color: Colors.white),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              );
            }),
      ),
    );
  }
}

class RowText extends StatelessWidget {
  const RowText(
      {super.key,
      required this.text1,
      required this.text2,
      required this.style,
      required this.width});
  final String text1, text2;
  final TextStyle style;
  final double width;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(text1, style: style),
        SizedBox(
          width: width,
        ),
        Text(text2, style: style)
      ],
    );
  }
}
