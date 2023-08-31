import 'package:bloc/bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:meta/meta.dart';

import '../../constants.dart';
import '../../model/note_model.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());

  fetchAllNotes() async {
    try {
      var notesBox = Hive.box<NoteModel>(KNotesBox);
      emit(NotesSuccess(notesBox.values.toList()));
    } on Exception catch (e) {
      emit(NotesFailure(e.toString()));
    }
  }
}
