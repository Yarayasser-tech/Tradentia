import 'package:flutter/material.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 48,
          height: 48,
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: const Color(0xFFEDE3FF),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Image.asset(
            'assets/images/yes.png',
            fit: BoxFit.contain,
          ),
        ),

        const SizedBox(width: 10),

        const Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Tradentia',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF4C1D95),
                ),
              ),
              Text(
                'Learn • Teach • Grow',
                style: TextStyle(
                  fontSize: 11,
                  color: Color(0xFF756B83),
                ),
              ),
            ],
          ),
        ),

        Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(13),
            border: Border.all(
              color: const Color(0xFFEDE7F5),
            ),
          ),
          child: IconButton(
            padding: EdgeInsets.zero,
            icon: const Icon(
              Icons.notifications_none_rounded,
              color: Color(0xFF4C1D95),
              size: 22,
            ),
            onPressed: () {},
          ),
        ),

        const SizedBox(width: 8),

        const CircleAvatar(
          radius: 20,
          backgroundImage: AssetImage(
            'assets/images/p1.png',
          ),
        ),
      ],
    );
  }
}