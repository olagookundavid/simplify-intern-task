import 'package:flutter/material.dart';

class Transactions extends StatelessWidget {
  final String name;
  final String date;
  final String time;
  final String points;
  final String image;
  final Color color;

  const Transactions(
      {Key? key,
      required this.name,
      required this.date,
      required this.time,
      required this.points,
      required this.image,
      required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundColor: Colors.transparent,
                radius: 20,
                child: Image.asset(
                  image,
                  fit: BoxFit.contain,
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              Text(
                name,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
          Text(
            date,
            style: const TextStyle(
                fontSize: 10, fontWeight: FontWeight.w700, color: Colors.grey),
          ),
          Text(
            time,
            style: const TextStyle(
                fontSize: 10, fontWeight: FontWeight.w700, color: Colors.grey),
          ),
          Text(
            points,
            style: TextStyle(
                fontSize: 14, fontWeight: FontWeight.w700, color: color),
          ),
          SizedBox(
            width: width * 14.19 / 375,
          ),
        ],
      ),
    );
  }
}
