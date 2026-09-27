import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool available = true;

  final Color bgLight = const Color(0xFFF4F7F6);
  final Color cardWhite = const Color(0xFFFFFFFF);
  final Color textDark = const Color(0xFF1E293B);
  final Color accentIndigo = const Color(0xFFF7408E);
  final Color softIndigoBg = const Color(0xFFEEF2FF);
  final Color lightGrayBg = const Color(0xFFF1F5F9);
  final Color statusGreen = const Color(0xFF10B981);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgLight,
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: cardWhite,
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withValues(alpha: 0.03),
                        blurRadius: 6,
                        offset: const Offset(0, 2),
                      ),
                    ],
                  ),
                  child: IconButton(
                    icon: Icon(Icons.arrow_back_ios_new, color: textDark, size: 16),
                    onPressed: () {},
                  ),
                ),
                Text(
                  'Profile',
                  style: TextStyle(color: textDark, fontSize: 18, fontWeight: FontWeight.w800),
                ),
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: cardWhite,
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withValues(alpha: 0.03),
                        blurRadius: 6,
                        offset: const Offset(0, 2),
                      ),
                    ],
                  ),
                  child: IconButton(
                    icon: Icon(Icons.settings_outlined, color: textDark, size: 20),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Center(
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: accentIndigo, width: 2),
                    ),
                  ),
                  const CircleAvatar(
                    radius: 44,
                    backgroundColor: Color(0xFFF1F5F9),
                    backgroundImage: AssetImage('assets/images/p6.png'),
                  ),
                  Positioned(
                    bottom: 4,
                    right: 4,
                    child: Container(
                      width: 16,
                      height: 16,
                      decoration: BoxDecoration(
                        color: available ? statusGreen : Colors.grey,
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.white, width: 2.5),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 12),
            Column(
              children: [
                Text(
                  'Yara Yasser',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w900, color: textDark),
                ),
                const SizedBox(height: 4),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                  decoration: BoxDecoration(
                    color: softIndigoBg,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Text(
                    'Flutter Developer • Student',
                    style: TextStyle(fontSize: 12, color: accentIndigo, fontWeight: FontWeight.w700),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: cardWhite,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withValues(alpha: 0.02),
                    blurRadius: 10,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Text('12', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w900, color: textDark)),
                      Text('Skills', style: TextStyle(fontSize: 11, color: Colors.grey, fontWeight: FontWeight.w600)),
                    ],
                  ),
                  Container(width: 1, height: 24, color: lightGrayBg),
                  Column(
                    children: [
                      Text('8', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w900, color: textDark)),
                      Text('Swaps', style: TextStyle(fontSize: 11, color: Colors.grey, fontWeight: FontWeight.w600)),
                    ],
                  ),
                  Container(width: 1, height: 24, color: lightGrayBg),
                  Column(
                    children: [
                      Text('24', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w900, color: textDark)),
                      Text('Friends', style: TextStyle(fontSize: 11, color: Colors.grey, fontWeight: FontWeight.w600)),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            SizedBox(
              height: 50,
              child: ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.edit_outlined, size: 18),
                label: const Text('Edit Profile', style: TextStyle(fontWeight: FontWeight.bold)),
                style: ElevatedButton.styleFrom(
                  backgroundColor: accentIndigo,
                  foregroundColor: Colors.white,
                  elevation: 0,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
                ),
              ),
            ),
            const SizedBox(height: 16),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: cardWhite,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(color: Colors.black.withValues(alpha: 0.02), blurRadius: 10, offset: const Offset(0, 4)),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('About', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w800, color: textDark)),
                  const SizedBox(height: 10),
                  Text(
                    'I love building mobile apps, learning new things, and sharing skills with others.',
                    style: TextStyle(fontSize: 13, color: textDark, height: 1.4),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 12),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: cardWhite,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(color: Colors.black.withValues(alpha: 0.02), blurRadius: 10, offset: const Offset(0, 4)),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('My Skills', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w800, color: textDark)),
                  const SizedBox(height: 10),
                  Wrap(
                    spacing: 8,
                    runSpacing: 8,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                        decoration: BoxDecoration(color: accentIndigo, borderRadius: BorderRadius.circular(16)),
                        child: const Text('Flutter', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700, fontSize: 12)),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                        decoration: BoxDecoration(color: softIndigoBg, borderRadius: BorderRadius.circular(16)),
                        child: Text('Dart', style: TextStyle(color: accentIndigo, fontWeight: FontWeight.w700, fontSize: 12)),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                        decoration: BoxDecoration(color: lightGrayBg, borderRadius: BorderRadius.circular(16)),
                        child: Text('UI Design', style: TextStyle(color: textDark, fontWeight: FontWeight.w700, fontSize: 12)),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                        decoration: BoxDecoration(color: bgLight, borderRadius: BorderRadius.circular(16)),
                        child: Text('Python', style: TextStyle(color: textDark, fontWeight: FontWeight.w700, fontSize: 12)),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 12),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: cardWhite,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(color: Colors.black.withValues(alpha: 0.02), blurRadius: 10, offset: const Offset(0, 4)),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('I Want To Learn', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w800, color: textDark)),
                  const SizedBox(height: 10),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                    decoration: BoxDecoration(color: lightGrayBg, borderRadius: BorderRadius.circular(12)),
                    child: Row(
                      children: [
                        Icon(Icons.design_services_outlined, size: 18, color: accentIndigo),
                        const SizedBox(width: 10),
                        Text('UI/UX Design', style: TextStyle(fontSize: 13, fontWeight: FontWeight.w700, color: textDark)),
                        const Spacer(),
                        const Icon(Icons.arrow_forward_ios_rounded, size: 12, color: Colors.grey),
                      ],
                    ),
                  ),
                  const SizedBox(height: 8),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                    decoration: BoxDecoration(color: lightGrayBg, borderRadius: BorderRadius.circular(12)),
                    child: Row(
                      children: [
                        Icon(Icons.local_fire_department_outlined, size: 18, color: accentIndigo),
                        const SizedBox(width: 10),
                        Text('Firebase', style: TextStyle(fontSize: 13, fontWeight: FontWeight.w700, color: textDark)),
                        const Spacer(),
                        const Icon(Icons.arrow_forward_ios_rounded, size: 12, color: Colors.grey),
                      ],
                    ),
                  ),
                  const SizedBox(height: 8),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                    decoration: BoxDecoration(color: lightGrayBg, borderRadius: BorderRadius.circular(12)),
                    child: Row(
                      children: [
                        Icon(Icons.brush_outlined, size: 18, color: accentIndigo),
                        const SizedBox(width: 10),
                        Text('Figma', style: TextStyle(fontSize: 13, fontWeight: FontWeight.w700, color: textDark)),
                        const Spacer(),
                        const Icon(Icons.arrow_forward_ios_rounded, size: 12, color: Colors.grey),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 12),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: cardWhite,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(color: Colors.black.withValues(alpha: 0.02), blurRadius: 10, offset: const Offset(0, 4)),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Activity & Settings', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w800, color: textDark)),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(color: softIndigoBg, shape: BoxShape.circle),
                        child: Icon(Icons.swap_horiz, color: accentIndigo, size: 18),
                      ),
                      const SizedBox(width: 12),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Flutter', style: TextStyle(fontWeight: FontWeight.bold, color: textDark)),
                          const Text('Taught Ahmed • 2d ago', style: TextStyle(fontSize: 11, color: Colors.grey)),
                        ],
                      ),
                    ],
                  ),
                  Divider(height: 20, color: lightGrayBg),
                  SwitchListTile(
                    contentPadding: EdgeInsets.zero,
                    activeTrackColor: accentIndigo,
                    activeThumbColor: Colors.white,
                    title: Text('Available for Swaps', style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: textDark)),
                    value: available,
                    onChanged: (bool value) => setState(() => available = value),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            TextButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.logout_rounded, size: 18, color: Colors.red),
              label: const Text('Log Out', style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold)),
            ),
          ],
        ),
      ),
    );
  }
}