import 'package:flutter/material.dart';
import '../widgets/register/custom_pill_field.dart';
import '../widgets/register/custom_social_button.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool isAgreed = false;
  bool showPassword = false;
  bool showConfirmPassword = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned(
            top: -20,
            right: -30,
            child: Container(
              width: 180,
              height: 180,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: RadialGradient(
                  center: Alignment.center,
                  radius: 0.8,
                  colors: [
                    const Color(0xFFC084FC).withValues(alpha: 0.75),
                    const Color(0xFF818CF8).withValues(alpha: 0.4),
                    Colors.white.withValues(alpha: 0.0),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: -20,
            left: -30,
            child: Container(
              width: 180,
              height: 180,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: RadialGradient(
                  center: Alignment.center,
                  radius: 0.8,
                  colors: [
                    const Color(0xFFC084FC).withValues(alpha: 0.75),
                    const Color(0xFFFB923C).withValues(alpha: 0.65),
                    Colors.white.withValues(alpha: 0.0),
                  ],
                ),
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 12),
                  IconButton(
                    padding: EdgeInsets.zero,
                    constraints: const BoxConstraints(),
                    icon: const Icon(Icons.arrow_back, color: Colors.black87, size: 22),
                    onPressed: () => Navigator.maybePop(context),
                  ),
                  const Spacer(flex: 1),
                  Row(
                    children: [
                      Image.asset(
                        'assets/images/yes.png',
                        width: 52,
                        height: 52,
                        fit: BoxFit.contain,
                        errorBuilder: (context, error, stackTrace) => const Icon(
                          Icons.grid_view_rounded,
                          color: Color(0xFF7C3AED),
                          size: 52,
                        ),
                      ),
                      const SizedBox(width: 14),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Tradentia',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF1E1B4B),
                            ),
                          ),
                          SizedBox(height: 2),
                          Text(
                            'Learn • Teach • Grow',
                            style: TextStyle(
                              fontSize: 13,
                              color: Color(0xFF8B5CF6),
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const Spacer(flex: 1),
                  const Text(
                    'Create your account',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF1E1B4B),
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'Start your journey to learn, teach and grow.',
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.grey,
                      height: 1.35,
                    ),
                  ),
                  const Spacer(flex: 2),
                  const CustomPillField(
                    hint: 'Full Name',
                    icon: Icons.person_outline,
                  ),
                  const SizedBox(height: 16),
                  const CustomPillField(
                    hint: 'Email Address',
                    icon: Icons.email_outlined,
                  ),
                  const SizedBox(height: 16),
                  CustomPillField(
                    hint: 'Password',
                    icon: Icons.lock_outline,
                    isPassword: true,
                    isVisible: showPassword,
                    onToggle: () => setState(() => showPassword = !showPassword),
                  ),
                  const SizedBox(height: 16),
                  CustomPillField(
                    hint: 'Confirm Password',
                    icon: Icons.lock_outline,
                    isPassword: true,
                    isVisible: showConfirmPassword,
                    onToggle: () => setState(() => showConfirmPassword = !showConfirmPassword),
                  ),
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      SizedBox(
                        width: 22,
                        height: 22,
                        child: Checkbox(
                          value: isAgreed,
                          activeColor: const Color(0xFF7C3AED),
                          side: const BorderSide(color: Colors.grey, width: 1),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4),
                          ),
                          onChanged: (val) => setState(() => isAgreed = val ?? false),
                        ),
                      ),
                      const SizedBox(width: 8),
                      const Expanded(
                        child: Text(
                          'I agree to Tradentia\'s Terms & Conditions\nand Privacy Policy',
                          style: TextStyle(fontSize: 10.5, color: Colors.grey),
                        ),
                      ),
                    ],
                  ),
                  const Spacer(flex: 2),
                  Container(
                    width: double.infinity,
                    height: 52,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(26),
                      gradient: const LinearGradient(
                        colors: [Color(0xFF8B5CF6), Color(0xFFF97316)],
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                      ),
                    ),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        shadowColor: Colors.transparent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(26),
                        ),
                      ),
                      onPressed: () {},
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Create Account',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(width: 8),
                          Icon(Icons.arrow_forward_rounded, color: Colors.white, size: 18),
                        ],
                      ),
                    ),
                  ),
                  const Spacer(flex: 1),
                  const Center(
                    child: Text(
                      'or continue with',
                      style: TextStyle(fontSize: 11.5, color: Colors.grey),
                    ),
                  ),
                  const Spacer(flex: 1),
                  const Row(
                    children: [
                      Expanded(
                        child: CustomSocialButton(
                          label: 'Continue with Google',
                          assetPath: 'assets/images/google.png',
                          fallbackIcon: Icons.g_mobiledata_rounded,
                        ),
                      ),
                      SizedBox(width: 12),
                      Expanded(
                        child: CustomSocialButton(
                          label: 'Continue with Apple',
                          assetPath: 'assets/images/apple.png',
                          fallbackIcon: Icons.apple,
                        ),
                      ),
                    ],
                  ),
                  const Spacer(flex: 2),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Already have an account? ',
                        style: TextStyle(fontSize: 11.5, color: Colors.grey),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: const Text(
                          'Login',
                          style: TextStyle(
                            fontSize: 11.5,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF7C3AED),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}