import 'package:flutter/material.dart';

class CustomElevatedButtonWidget extends StatelessWidget {
  final VoidCallback onPress;

  const CustomElevatedButtonWidget({
    super.key,
    required this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPress,
      child: const Text('Continue'),
    );
  }
}