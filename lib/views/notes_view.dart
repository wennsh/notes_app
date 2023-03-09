import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_7/views/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(
            Icons.add,
          )),
      body: const NotesViewBody(),
    );
  }
}
