import 'package:flutter/material.dart';

class MetaWidget extends StatelessWidget {
  const MetaWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _metaButton('About'),
            const SizedBox(width: 18),
            _metaButton('Help'),
            const SizedBox(width: 18),
            _metaButton('More'),
          ],
        ),

        const SizedBox(height: 28),

        const Text(
          'Meta © 2026',
          style: TextStyle(
            color: Color(0xFF6B7280),
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }

  Widget _metaButton(String text) {
    return GestureDetector(
      onTap: () {},
      child: Text(
        text,
        style: const TextStyle(
          color: Color(0xFF3F3F46),
          fontSize: 14,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}