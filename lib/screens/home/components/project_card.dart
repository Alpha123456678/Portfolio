import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/models/project.dart';
import 'package:portfolio/responsive.dart';

class ProjectCard extends StatelessWidget {
  const ProjectCard({super.key, required this.project});

  final Project project;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultPadding),
      color: secondaryColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            project.title!,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: defaultPadding),
          Text(
            project.description!,
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(height: 1.3),
          ),
          SizedBox(height: defaultPadding),
          Align(
            alignment: Alignment.bottomLeft,
            child: TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                padding: EdgeInsets.zero,
              ),
              child: const Text(
                "Read More >>",
              ),
            ),
          ),
        ],
      ),
    );
  }
}
