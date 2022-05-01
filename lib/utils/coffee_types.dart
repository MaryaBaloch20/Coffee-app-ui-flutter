import 'dart:ffi';

import 'package:flutter/material.dart';

class CoffeeType extends StatelessWidget {
  final String coffeetype;
  final bool isSelected;
  final VoidCallback onTap;
  CoffeeType({
    required this.coffeetype,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(left: 25.0),
        child: Text(
          coffeetype,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
            color: isSelected ? Colors.orange : Colors.white,
          ),
        ),
      ),
    );
  }
}
