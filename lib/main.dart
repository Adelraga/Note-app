import 'package:flutter/material.dart';
import 'package:noteapp/add_note_cubit/cubit/add_note_cubit.dart';
import 'package:noteapp/model/note_model.dart';
import 'package:noteapp/views/notes_view.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'add_note_cubit/cubit/notes_cubit.dart';
import 'bloc_observe.dart';
import 'constants.dart';

void main() async {
  Bloc.observer=SimpleBlocObserver();
  await Hive.initFlutter();
  Hive.registerAdapter(NoteModelAdapter());
  await Hive.openBox<NoteModel>(KNotesBox);
  runApp(const NoteApp());
}

class NoteApp extends StatelessWidget {
  const NoteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AddNoteCubit(),
        ),
        BlocProvider(
          create: (context) => NotesCubit(),
        ),
       
      ],
    
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            brightness: Brightness.dark,
            fontFamily: 'Poppins',
          ),
          home: NotesView()),
    );
  }
}
