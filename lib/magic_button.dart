library magic_button;

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MagicButton extends StatefulWidget {
  final String buttonText;
  dynamic function;
  MagicButton({Key? key, required this.buttonText, this.function})
      : super(key: key);

  @override
  State<MagicButton> createState() => _MagicButtonState();
}

class _MagicButtonState extends State<MagicButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          if (widget.function != null) {
            widget.function();
          }
        },
        child: Text(widget.buttonText));
  }
}
