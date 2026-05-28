import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';

class Coding extends StatelessWidget {
  const Coding({
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
            "Coding",
            style: TextStyle(color: Colors.white),
          ),
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.8,
          label: "Dart",
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.70,
          label: "REST API",
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.75,
          label: "Git & GitHub",
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.70,
          label: "C",
        ),
        AnimatedLinearProgressIndicator(
          percentage: 0.65,
          label: "Python",
        ),   
      ]
    );
  }
}

class AnimatedLinearProgressIndicator extends StatelessWidget {
  const AnimatedLinearProgressIndicator({
    super.key, required this.percentage, required this.label,
  });

  final double percentage;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding / 2),
      child: TweenAnimationBuilder(
        tween: Tween<double>(begin: 0, end: percentage), 
        duration: defaultDuration, 
        builder: (context, double value, child) => Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  label,
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  "${(value * 100).toInt()}%", 
                ),  
              ],
            ),
            SizedBox(height: defaultPadding / 2),
            LinearProgressIndicator(
              value: value,
              color: primaryColor,
              backgroundColor: darkColor,
            ),
          ],
        ),
      ),
    );
  }
}

