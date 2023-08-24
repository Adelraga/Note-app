import 'package:flutter/material.dart';

import '../../constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 55,
      decoration: BoxDecoration(
          color: KPrimatyColor, borderRadius: BorderRadius.circular(8)),
      child: Center(
        child: Text(
          'Add',
          style: TextStyle(
              color: Colors.black, fontSize: 19, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
