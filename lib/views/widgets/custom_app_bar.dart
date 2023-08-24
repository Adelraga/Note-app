import 'package:flutter/material.dart';

import 'CustomSearchIcon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.title, required this.icon});
  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 28,
          ),
        ),
        Spacer(),
        CustomSearchIcon(icon: icon,),
      ],
    );
  }
}
