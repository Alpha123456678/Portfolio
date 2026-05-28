import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';

class HighLight extends StatelessWidget {
  const HighLight({
    super.key, required this.Counter, this.label,
  });

  final Widget Counter;
  final String? label;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // we want this text to animated
       Counter, 
        SizedBox(width: defaultPadding / 2),
        Text(
          label!,
          style: TextStyle(
            color: Colors.white,
            fontSize: 12,
          ),
        ),  
      ],
    );
  }
}

