import 'package:flutter/material.dart';

class TextObject extends StatelessWidget {
  const TextObject({super.key, required this.text, this.maxLines,required this.style});
  final String text;
  final TextStyle? style;
  final int? maxLines;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: maxLines,
      overflow: TextOverflow.ellipsis,
      style: style,
    );
  }
}
