import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';
import 'CustomButton.dart';
import 'CustomTextField.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            CustomTextField(hint: 'Title'),
            SizedBox(
              height: 16,
            ),
            CustomTextField(
              hint: 'Content',
              maxlines: 5,
            ),
            SizedBox(height: 20,),
            CustomButton(),
            SizedBox(height: 20,),
          ],
        ),
      ),
    );
  }
}


