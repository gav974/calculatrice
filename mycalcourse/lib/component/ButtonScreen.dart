import 'package:flutter/material.dart';
import 'Buttons.dart';

class buttonScreen extends StatelessWidget {
  const buttonScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      childAspectRatio: 1,
      crossAxisCount: 3,
      shrinkWrap: true,
      mainAxisSpacing: 5,
      crossAxisSpacing: 5,
      children: [
        buttons("1"),
        buttons("2"),
        buttons("3"),
        buttons("4"),
        buttons("5"),
        buttons("6"),
        buttons("7"),
        buttons("8"),
        buttons("9"),
        buttons("X"),
        buttons("0"),
        buttons("C"),
      ],
    );
  }
}
