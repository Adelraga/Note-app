import 'package:flutter/material.dart';
import 'package:noteapp/model/note_model.dart';
import 'package:noteapp/views/widgets/edit_view_body.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key, required this.note});
final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EditViewBody(note: note,),
    );
  }
}