import 'package:flutter/material.dart';

class PersonCard extends StatelessWidget {
  final String name;
  final String teachSkill;
  final String learnSkill;
  final String imagePath;
  final Color accentColor;
  final Color lightColor;

  const PersonCard({
    super.key,
    required this.name,
    required this.teachSkill,
    required this.learnSkill,
    required this.imagePath,
    required this.accentColor,
    required this.lightColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 135,
      margin: const EdgeInsets.only(right: 10),
      padding: const EdgeInsets.all(11),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
        border: Border.all(
          color: lightColor,
        ),
        boxShadow: [
          BoxShadow(
            color: accentColor.withValues(alpha: 0.08),
            blurRadius: 9,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            children: [
              CircleAvatar(
                radius: 22,
                backgroundColor: lightColor,
                backgroundImage: AssetImage(imagePath),
              ),

              Positioned(
                right: 0,
                bottom: 1,
                child: Container(
                  width: 9,
                  height: 9,
                  decoration: const BoxDecoration(
                    color: Color(0xFF55C9A5),
                    shape: BoxShape.circle,
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(height: 6),

          Text(
            name,
            style: const TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.bold,
              color: Color(0xFF211A2E),
            ),
          ),

          const SizedBox(height: 6),

          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(
              horizontal: 5,
              vertical: 5,
            ),
            decoration: BoxDecoration(
              color: lightColor,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Text(
              teachSkill,
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 9,
                fontWeight: FontWeight.w600,
                color: accentColor,
              ),
            ),
          ),

          const SizedBox(height: 4),

          Text(
            'Wants $learnSkill',
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              fontSize: 9,
              color: Color(0xFF756B83),
            ),
          ),
        ],
      ),
    );
  }
}