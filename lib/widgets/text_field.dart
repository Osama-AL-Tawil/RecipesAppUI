import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  final String hintText;
  final double? radius;
  final double? marginBottom;
  final int? height;
  final int? maxLines;
  final ValueChanged<String> onChanged;
  final TextEditingController? controller;

  const TextFieldWidget({Key? key,
    required this.hintText,
    required this.onChanged,
    this.marginBottom = 20,
    this.radius = 30,
    this.height,
    this.controller,
    this.maxLines = 1})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(15, 0, 15, marginBottom!),
        child: TextField(
          decoration: InputDecoration(
              hintText: hintText,
              contentPadding: const EdgeInsets.all(15),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(radius!))),
          onChanged: onChanged,
          maxLines: maxLines,
          controller: controller,
        ),);
  }
}
