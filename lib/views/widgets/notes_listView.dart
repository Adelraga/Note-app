import 'package:flutter/material.dart';

import 'Custome_note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index) {
      
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: const NoteItem(),
      );
    });
  }
}