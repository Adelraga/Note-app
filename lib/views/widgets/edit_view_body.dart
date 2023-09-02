import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:noteapp/add_note_cubit/cubit/notes_cubit.dart';
import 'package:noteapp/model/note_model.dart';
import 'package:noteapp/views/widgets/CustomTextField.dart';
import 'package:noteapp/views/widgets/custom_app_bar.dart';

class EditViewBody extends StatefulWidget {
  const EditViewBody({super.key, required this.note});
  final NoteModel note;
  

  @override
  State<EditViewBody> createState() => _EditViewBodyState();
}

class _EditViewBodyState extends State<EditViewBody> {
  String? title;
  String? content;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(height: 50,),
          CustomAppBar(title: 'Edit Note',icon: Icons.check,onPressed: () {
            widget.note.title = title??widget.note.title;
            widget.note.subTitle = content??widget.note.subTitle;
            widget.note.save();
            Navigator.pop(context);
            BlocProvider.of<NotesCubit>(context).fetchAllNotes();
          },),
          SizedBox(height: 50,),
          CustomTextField(hint: widget.note.title,onChange: (value) {
            title =value;
          },),
          SizedBox(height: 16,),
          CustomTextField(hint: widget.note.subTitle,maxlines: 5,onChange: (value) {
            content =value;
          },),
        ],
      ),
    );
  }
}