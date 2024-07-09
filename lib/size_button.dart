import 'package:flutter/material.dart';

class SizeButton extends StatelessWidget {
  final String size;
  final bool isSelected;
  final VoidCallback onPressed;

  const SizeButton({
    super.key,
    required this.size,
    required this.isSelected,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: isSelected ? Colors.red : Colors.grey,
        padding: const EdgeInsets.symmetric(horizontal: 16),
      ),
      child: Text(size),
    );
  }
}
