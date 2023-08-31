import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:noteapp/add_note_cubit/cubit/notes_cubit.dart';
import 'package:noteapp/views/widgets/custom_app_bar.dart';

import 'Custome_note_item.dart';
import 'notes_listView.dart';

class NotesViewBody extends StatefulWidget {
  const NotesViewBody({super.key});

  @override
  State<NotesViewBody> createState() => _NotesViewBodyState();
}

class _NotesViewBodyState extends State<NotesViewBody> {
  @override
  void initState() {
    BlocProvider.of<NotesCubit>(context).fetchAllNotes();
    super.initState();
  }
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(children: [
        SizedBox(
          height: 50,
        ),
        CustomAppBar(title: 'Note',icon: Icons.search,),
        // TODO: Add notes list here!
        Expanded(
          child: NotesListView(),
          
        )
      ]),
    );
  }
}
