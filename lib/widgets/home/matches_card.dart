import 'package:flutter/material.dart';

class MatchesCard extends StatelessWidget {
  const MatchesCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(17),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            Color(0xFFEDE3FF),
            Color(0xFFF7F2FF),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Row(
            children: [
              const Icon(
                Icons.people_alt_outlined,
                color: Color(0xFF7C3AED),
                size: 20,
              ),

              const SizedBox(width: 7),

              const Text(
                'Your match',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF4C1D95),
                ),
              ),

              const Spacer(),

              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 5,
                ),
                decoration: BoxDecoration(
                  color: const Color(0xFFFBBF24),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Text(
                  '92% Match',
                  style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF4C1D00),
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(height: 14),

          Row(
            children: [
              const CircleAvatar(
                radius: 27,
                backgroundImage: AssetImage(
                  'assets/images/p4.png',
                ),
              ),

              const SizedBox(width: 12),

              const Expanded(
                child: Column(
                  crossAxisAlignment:
                  CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Tara',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF211A2E),
                      ),
                    ),

                    SizedBox(height: 3),

                    Row(
                      children: [
                        Icon(
                          Icons.location_on_outlined,
                          size: 12,
                          color: Color(0xFF756B83),
                        ),
                        SizedBox(width: 3),
                        Text(
                          'Cairo • 2 km away',
                          style: TextStyle(
                            fontSize: 11,
                            color: Color(0xFF756B83),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              const Icon(
                Icons.arrow_forward_ios_rounded,
                size: 14,
                color: Color(0xFF7C3AED),
              ),
            ],
          ),

          const SizedBox(height: 13),

          Row(
            children: [
              _Tag(
                text: 'Flutter',
                background: Colors.white,
                textColor: const Color(0xFF4C1D95),
              ),

              const SizedBox(width: 7),

              const Text(
                'wants to learn',
                style: TextStyle(
                  fontSize: 11,
                  color: Color(0xFF756B83),
                ),
              ),

              const SizedBox(width: 7),

              _Tag(
                text: 'UI/UX',
                background: const Color(0xFFFFE7DF),
                textColor: const Color(0xFFC2410C),
              ),
            ],
          ),

          const SizedBox(height: 14),

          SizedBox(
            width: double.infinity,
            height: 42,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor:
                const Color(0xFFFDC93D),
                foregroundColor: Colors.white,
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(13),
                ),
              ),
              child: const Text(
                'View Match',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _Tag extends StatelessWidget {
  final String text;
  final Color background;
  final Color textColor;

  const _Tag({
    required this.text,
    required this.background,
    required this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 9,
        vertical: 6,
      ),
      decoration: BoxDecoration(
        color: background,
        borderRadius: BorderRadius.circular(9),
      ),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 10,
          fontWeight: FontWeight.w600,
          color: textColor,
        ),
      ),
    );
  }
}