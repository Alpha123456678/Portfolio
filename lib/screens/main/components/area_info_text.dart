import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';

class AreaInfoText extends StatelessWidget {
  const AreaInfoText({
    super.key, this.tittle, this.text,
  });

  final String? tittle, text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding / 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            tittle!,
            style: TextStyle(color: Colors.white),
          ),
          Text(
            text!,
          ),
        ],
      ),
    );
  }
}



