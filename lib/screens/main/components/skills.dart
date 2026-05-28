import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/screens/main/components/animated_progress_indicator.dart';

class Skills extends StatelessWidget {
  const Skills({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        Padding(
          padding: 
            const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text(
             "Skills",
             style: TextStyle(color: Colors.white),
            ),
          ),
        Row(
          children: [
            Expanded(
              child:AnimatedCircularProgressIndicator(
                percentage: 0.75,
                label: "Flutter",
              ),
           ),
          SizedBox(width: defaultPadding),
          Expanded(
            child:AnimatedCircularProgressIndicator(
              percentage: 0.65,
              label: "Firebase",
            ),
          ),
          SizedBox(width: defaultPadding),
          Expanded(
            child:AnimatedCircularProgressIndicator(
              percentage: 0.55,
              label: "REST API",
            ),
          )],
        ),
      ],
    );
  }
}


                  

