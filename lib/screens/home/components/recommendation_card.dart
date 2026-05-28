import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/models/recommendation.dart';

class RecommendationCard extends StatelessWidget {
  const RecommendationCard({
    super.key, required this.recommendation,
  });

  final Recommendation recommendation;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      padding: EdgeInsets.all(defaultPadding),
      color: secondaryColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            recommendation.name!,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          Text(
            recommendation.source!,
          ),
          SizedBox(height: defaultPadding),
          Text(
            recommendation.text!,
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              height: 1.5,
            ),
          ),
        ],
      ),
    );
  }
}

