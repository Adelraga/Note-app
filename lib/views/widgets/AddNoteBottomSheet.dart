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
        child: AddNoteForm(),
      ),
    );
  }
}

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey <FormState> formKey =GlobalKey();
  AutovalidateMode autovalidateMode =AutovalidateMode.disabled;
  String? title,subTitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          CustomTextField(
            onSaved:(value){
              title=value;
            },
            hint: 'Title'),
          SizedBox(
            height: 16,
          ),
          CustomTextField(
            onSaved: (value){
              subTitle=value;
            },
            hint: 'Content',
            maxlines: 5,
          ),
          SizedBox(height: 20,),
          CustomButton(
            ontap: (){
              if(formKey.currentState!.validate()){
                formKey.currentState!.save();
              }else{
                autovalidateMode=AutovalidateMode.always;
                setState(() {
                  
                });
              }
            },
          ),
          SizedBox(height: 20,),
        ],
      ),
    );
  }
}


