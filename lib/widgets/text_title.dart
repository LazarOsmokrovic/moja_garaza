import 'package:flutter/material.dart';

class TextTitle extends StatelessWidget {
  final String title;
  
  const TextTitle(this.title);
  
  @override
  Widget build(BuildContext context) {
    return Text(title,
        style: TextStyle(
        fontSize: 15,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
