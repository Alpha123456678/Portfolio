import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/responsive.dart';
import 'package:portfolio/screens/home/components/high_light.dart';
import 'package:portfolio/screens/main/components/animated_counter.dart';

class HighLightsInfo extends StatelessWidget {
  const HighLightsInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: Responsive.isMobileLarge(context) 
      ? Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            HighLight(
            Counter: AnimatedCounter(
              value: 4, 
              text: "+",
            ),
            label: "Github Projects",
          ),
          HighLight(
            Counter: AnimatedCounter(
              value: 1, 
              text: "+",
            ),
            label: "Years of Experience",
          ),
          ],

        ),
        SizedBox(height: defaultPadding),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            HighLight(
            Counter: AnimatedCounter(
              value: 3, 
              text: "+",
            ),
            label: "Languages",
          ),
          HighLight(
            Counter: AnimatedCounter(
              value: 3, 
              text: "+",
            ),
            label: "Certificate", 
          ),

          ],
        )
      ],) 
      : Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          HighLight(
            Counter: AnimatedCounter(
              value: 8, 
              text: "+",
            ),
            label: "Github Projects",
          ),
          HighLight(
            Counter: AnimatedCounter(
              value: 1, 
              text: "+",
            ),
            label: "Years of Experience",
          ),
          HighLight(
            Counter: AnimatedCounter(
              value: 2, 
              text: "+",
            ),
            label: "Languages",
          ),
          HighLight(
            Counter: AnimatedCounter(
              value: 3, 
              text: "+",
            ),
            label: "Certificate", 
          ),
        ],
      ),
    );
  }
}

