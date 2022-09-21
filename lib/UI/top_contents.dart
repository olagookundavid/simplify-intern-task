import 'package:flutter/material.dart';

class TopContents extends StatelessWidget {
  const TopContents({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: const [
        SizedBox(
          height: 40,
          width: 40,
          child: Image(
            fit: BoxFit.fill,
            image: AssetImage('assets/face.png'),
          ),
        ),
        SizedBox(
          width: 5,
        ),
        Text(
          'Hi Janet,',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
        ),
        Spacer(),
        TopContentIcon(image: 'assets/search.png'),
        TopContentIcon(image: 'assets/help-circle.png'),
        TopContentIcon(image: 'assets/bell.png')
      ],
    );
  }
}

class TopContentIcon extends StatelessWidget {
  const TopContentIcon({super.key, required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 3),
      child: ImageIcon(
        AssetImage(image),
        size: 20,
        // color: Colors.black,
      ),
    );
  }
}
