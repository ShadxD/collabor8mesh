import 'package:flutter/material.dart';

import '../const/pallete.dart';

class Textfield extends StatelessWidget {
  final String hintText;
  const Textfield({super.key, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 400),
      child: TextField(
        decoration: InputDecoration(
          hintText: hintText,
          contentPadding: const EdgeInsets.all(25),
          enabledBorder: OutlineInputBorder(
              borderSide:
                  const BorderSide(color: Pallete.borderColor, width: 1),
              borderRadius: BorderRadius.circular(10)),
          focusedBorder: OutlineInputBorder(
              borderSide:
                  const BorderSide(color: Pallete.universecolor, width: 2),
              borderRadius: BorderRadius.circular(10)),
        ),
      ),
    );
  }
}
