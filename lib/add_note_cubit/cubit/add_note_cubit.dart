import 'package:bloc/bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:meta/meta.dart';
import 'package:noteapp/constants.dart';
import 'package:noteapp/model/note_model.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());

  addNote(NoteModel note) async{
    emit(AddNoteLoading());
    try {
  var notesBox = Hive.box<NoteModel>(KNotesBox);
  emit(AddNoteSuccess());
  await notesBox.add(note);
} on Exception catch (e) {
  AddNoteFailure(e.toString());
}
  }

}
