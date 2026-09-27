import 'package:flutter/material.dart';

class HomeSearchBar extends StatelessWidget {
  const HomeSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SearchBar(
      hintText: 'Search skills, people...',
      leading: const Icon(
        Icons.search_rounded,
        color: Color(0xFF756B83),
      ),
      trailing: [
        Container(
          padding: const EdgeInsets.all(7),
          decoration: BoxDecoration(
            color: const Color(0xFFEDE3FF),
            borderRadius: BorderRadius.circular(10),
          ),
          child: const Icon(
            Icons.tune_rounded,
            size: 18,
            color: Color(0xFF7C3AED),
          ),
        ),
      ],
      backgroundColor: WidgetStateProperty.all(
        Colors.white,
      ),
      elevation: WidgetStateProperty.all(0),
      side: WidgetStateProperty.all(
        const BorderSide(
          color: Color(0xFFEDE7F5),
        ),
      ),
      shape: WidgetStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
    );
  }
}