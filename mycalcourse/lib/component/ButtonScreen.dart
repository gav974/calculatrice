import 'package:flutter/material.dart';
import 'Buttons.dart';

class buttonScreen extends StatefulWidget {
  buttonScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<buttonScreen> createState() => _buttonScreenState();
}

class _buttonScreenState extends State<buttonScreen> {
  List databuttons = [1, 2, 3, 4, 5, 6, 7, 8, 9, "X", 0, ","];

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      childAspectRatio: 1.5,
      crossAxisCount: 3,
      shrinkWrap: true,
      mainAxisSpacing: 2,
      crossAxisSpacing: 2,
      children: [
        buttons(
          databuttons[0].toString(),
          databuttons[0],
        ),
        buttons(
          databuttons[1].toString(),
          databuttons[1],
        ),
        buttons(
          databuttons[2].toString(),
          databuttons[2],
        ),
        buttons(
          databuttons[3].toString(),
          databuttons[3],
        ),
        buttons(
          databuttons[4].toString(),
          databuttons[4],
        ),
        buttons(
          databuttons[5].toString(),
          databuttons[5],
        ),
        buttons(
          databuttons[6].toString(),
          databuttons[6],
        ),
        buttons(
          databuttons[7].toString(),
          databuttons[7],
        ),
        buttons(
          databuttons[8].toString(),
          databuttons[8],
        ),
        buttons(
          databuttons[9],
          databuttons[9],
        ),
        buttons(
          databuttons[10].toString(),
          databuttons[10],
        ),
        buttons(
          databuttons[11],
          '.',
        ),
      ],
    );
  }
}
