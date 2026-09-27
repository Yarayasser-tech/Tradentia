import 'package:flutter/material.dart';

class CustomSocialButton extends StatelessWidget {
  final String label;
  final String assetPath;
  final IconData fallbackIcon;

  const CustomSocialButton({
    super.key,
    required this.label,
    required this.assetPath,
    required this.fallbackIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 46,
      decoration: BoxDecoration(
        color: const Color(0xFFF3F4F6),
        borderRadius: BorderRadius.circular(23),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            assetPath,
            width: 18,
            height: 18,
            errorBuilder: (context, error, stackTrace) => Icon(
              fallbackIcon,
              size: 18,
              color: Colors.black87,
            ),
          ),
          const SizedBox(width: 8),
          Flexible(
            child: Text(
              label,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                fontSize: 10.5,
                fontWeight: FontWeight.w500,
                color: Colors.black87,
              ),
            ),
          ),
        ],
      ),
    );
  }
}