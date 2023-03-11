import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_7/views/widgets/add_note_bottom_sheet.dart';
import 'package:flutter_application_7/views/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                context: context,
                builder: (context) {
                  return const AddNoteButtomSheet();
                });
          },
          child: const Icon(
            Icons.add,
          )),
      body: const NotesViewBody(),
    );
  }
}
