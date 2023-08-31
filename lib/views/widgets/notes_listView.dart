import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:noteapp/add_note_cubit/cubit/notes_cubit.dart';
import 'package:noteapp/model/note_model.dart';

import 'Custome_note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NotesState>(
      builder: ( context, state) {
          List<NoteModel> notes =BlocProvider.of<NotesCubit>(context).notes ??[];
        return Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 16,
          ),
          child: ListView.builder(
            itemCount:notes.length ,
              padding: EdgeInsets.zero,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: const NoteItem(),
                );
              }),
        );
      },
    );
  }
}
