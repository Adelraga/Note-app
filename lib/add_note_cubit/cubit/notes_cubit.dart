import 'package:bloc/bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:meta/meta.dart';

import '../../constants.dart';
import '../../model/note_model.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());
List<NoteModel>? notes;
  fetchAllNotes() async {
      var notesBox = Hive.box<NoteModel>(KNotesBox);
      notes = notesBox.values.toList();
   
  }
}
