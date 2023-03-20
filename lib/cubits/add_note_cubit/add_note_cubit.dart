import 'package:bloc/bloc.dart';
import 'package:flutter_application_7/views/widgets/constants.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:meta/meta.dart';

import '../../models/note_model.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());

  addNote(NoteModel note) async {
    emit(AddNoteLoading());
    try {
      var notesBox = Hive.box<NoteModel>(kNotesBox);

      emit(AddNoteSuccsess());
      await notesBox.add(note);
    } catch (e) {
      AddNoteFailure(e.toString());
    }
  }
}
