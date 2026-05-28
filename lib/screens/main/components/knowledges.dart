import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portfolio/constants.dart';

class Knowledges extends StatelessWidget {
  const Knowledges({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text(
            "Knowledge",
            style: TextStyle(color: Colors.white),
          ),
         ),
        Knowledge(text: "Flutter, Dart"),
        Knowledge(text: "Firebase, Firestore"),
        Knowledge(text: "Git & GitHub Knowledge"),
        Knowledge(text: "REST API"),
        Knowledge(text: "Python, C"),
      ],
    );
  }
}

class Knowledge extends StatelessWidget {
  const Knowledge({
    super.key, required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding / 2),
      child: Row(
        children: [
          SvgPicture.asset("assets/icons/check.svg"),
          SizedBox(width: defaultPadding / 2),
          Text(text),
        ],
      ),
    );
  }
}

