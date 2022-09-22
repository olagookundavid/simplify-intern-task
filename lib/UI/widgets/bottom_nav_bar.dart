import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedLabelStyle:
          const TextStyle(color: Color(0xFF5243D2), fontSize: 12),
      unselectedLabelStyle: TextStyle(
          color: const Color(0xFF000000).withOpacity(.3), fontSize: 12),
      backgroundColor: Colors.white,
      selectedItemColor: const Color(0xFF5243D2),
      unselectedItemColor: const Color(0xFF000000).withOpacity(.3),
      currentIndex: 0,
      type: BottomNavigationBarType.fixed,
      unselectedFontSize: 14,
      items: const [
        BottomNavigationBarItem(
          icon: ImageIcons(
            image: 'assets/House.png',
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: ImageIcons(
            image: 'assets/payment.png',
          ),
          label: 'Payments',
        ),
        BottomNavigationBarItem(
          icon: ImageIcons(
            image: 'assets/CreditCard.png',
          ),
          label: 'Cards',
        ),
        BottomNavigationBarItem(
          icon: ImageIcons(
            image: 'assets/settings.png',
          ),
          label: 'Settings',
        ),
      ],
    );
  }
}

class ImageIcons extends StatelessWidget {
  const ImageIcons({super.key, required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    return ImageIcon(
      AssetImage(image),
      size: 30,
      // color: const Color(0xFF000000),
      //5243D2
    );
  }
}
