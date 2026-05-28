import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/models/recommendation.dart';
import 'package:portfolio/screens/home/components/recommendation_card.dart';

class Recommendations extends StatelessWidget {
  const Recommendations({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Recommendation",
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
              color: Colors.white,
            ),
          ),
          SizedBox(height: defaultPadding),
          SizedBox(
            height: 180, 
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: demo_recommendations.length,
              separatorBuilder: (context, index) => SizedBox(width: defaultPadding),
              itemBuilder: (context, index) => RecommendationCard(
                recommendation: demo_recommendations[index],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

