import 'package:flutter/material.dart';

class CustomSearchIcon extends StatelessWidget {
  const CustomSearchIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 46,
        width: 46,
        decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.05),
            borderRadius: BorderRadius.circular(16)),
    child:
    Center(
        child: IconButton(
            iconSize: 30,
            icon: Icon(
              Icons.search,
              size: 28,
            ),
            onPressed: () {})),
    );
  }
}