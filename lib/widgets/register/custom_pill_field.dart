import 'package:flutter/material.dart';

class CustomPillField extends StatelessWidget {
  final String hint;
  final IconData icon;
  final bool isPassword;
  final bool isVisible;
  final VoidCallback? onToggle;

  const CustomPillField({
    super.key,
    required this.hint,
    required this.icon,
    this.isPassword = false,
    this.isVisible = false,
    this.onToggle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 52,
      padding: const EdgeInsets.symmetric(horizontal: 18),
      decoration: BoxDecoration(
        color: const Color(0xFFF3F4F6),
        borderRadius: BorderRadius.circular(26),
      ),
      child: TextField(
        obscureText: isPassword && !isVisible,
        style: const TextStyle(fontSize: 13),
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: hint,
          hintStyle: const TextStyle(fontSize: 12.5, color: Colors.grey),
          prefixIcon: Icon(icon, color: Colors.grey, size: 20),
          prefixIconConstraints: const BoxConstraints(minWidth: 32),
          contentPadding: const EdgeInsets.symmetric(vertical: 16),
          suffixIcon: isPassword
              ? IconButton(
            padding: EdgeInsets.zero,
            constraints: const BoxConstraints(),
            icon: Icon(
              isVisible ? Icons.visibility : Icons.visibility_off,
              color: Colors.grey,
              size: 18,
            ),
            onPressed: onToggle,
          )
              : null,
        ),
      ),
    );
  }
}