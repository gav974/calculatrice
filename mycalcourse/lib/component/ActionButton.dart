import 'package:flutter/material.dart';

class actionButton extends StatefulWidget {
  String namedButton;
  actionButton({required this.namedButton});

  @override
  State<actionButton> createState() => _actionButtonState();
}

class _actionButtonState extends State<actionButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140,
      height: 80,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(
          onPressed: null,
          child: Text(
            widget.namedButton,
            style: TextStyle(
              fontSize: 20,
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
