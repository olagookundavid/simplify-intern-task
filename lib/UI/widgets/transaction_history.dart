import 'package:flutter/material.dart';
import 'package:pavilion_rewards/UI/widgets/transactions.dart';

class TransactionHistory extends StatelessWidget {
  const TransactionHistory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: width * .05),
      child: Container(
        decoration: BoxDecoration(
            color: const Color(0xFFFFFFFF),
            borderRadius: BorderRadius.circular(8)),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 8.0 / 375),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Transaction History',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                  ),
                  DropdownButton(
                    items: const <DropdownMenuItem>[
                      DropdownMenuItem(
                          child: Text(
                        'This Month',
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 10),
                      ))
                    ],
                    onChanged: null,
                    underline: Container(),
                  )
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  const Text(
                    'Name',
                    style: TextStyle(fontSize: 10),
                  ),
                  SizedBox(
                    width: width * 102 / 375,
                  ),
                  const Text(
                    'Date',
                    style: TextStyle(fontSize: 10),
                  ),
                  SizedBox(
                    width: width * .12,
                  ),
                  const Text(
                    'Time',
                    style: TextStyle(fontSize: 10),
                  ),
                  SizedBox(
                    width: width * 23 / 375,
                  ),
                  const Text(
                    'Points',
                    style: TextStyle(fontSize: 10),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              const Transactions(
                  name: 'SuperMart',
                  date: '12/06/2022',
                  time: '12:34',
                  points: '+50points',
                  image: 'assets/green box.png',
                  color: Colors.green),
              const Transactions(
                  name: 'SuperMart',
                  date: '12/06/2022',
                  time: '12:34',
                  points: '+50points',
                  image: 'assets/red box.png',
                  color: Colors.red),
              const Transactions(
                  name: 'SuperMart',
                  date: '12/06/2022',
                  time: '12:34',
                  points: '+50points',
                  image: 'assets/red box.png',
                  color: Colors.red),
              const Transactions(
                  name: 'SuperMart',
                  date: '12/06/2022',
                  time: '12:34',
                  points: '+50points',
                  image: 'assets/red box.png',
                  color: Colors.red),
              const Transactions(
                  name: 'SuperMart',
                  date: '12/06/2022',
                  time: '12:34',
                  points: '+50points',
                  image: 'assets/red box.png',
                  color: Colors.red),
            ],
          ),
        ),
      ),
    );
  }
}
