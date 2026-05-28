import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/models/project.dart';
import 'package:portfolio/responsive.dart';
import 'package:portfolio/screens/home/components/project_card.dart';

class MyProjects extends StatelessWidget {
  const MyProjects({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "My Projects",
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
            color: Colors.white,
          ),
        ),
        SizedBox(height: defaultPadding / 2),
        Responsive(
          mobile: ProjectsGridView(crossAxisCount: 1,childAspectRatio: 1.4,), 
          mobileLarge: ProjectsGridView(crossAxisCount: 2),
          tablet: ProjectsGridView(childAspectRatio: 1.0,),
          desktop: ProjectsGridView(childAspectRatio: 1.1,),
        )
     ],
    );
  }
}

class ProjectsGridView extends StatelessWidget {
  const ProjectsGridView({
    super.key,
    this.crossAxisCount = 3, 
    this.childAspectRatio = 1.3,
  });

  final int crossAxisCount;
  final double childAspectRatio;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: demo_projects.length,
      gridDelegate:
        SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        childAspectRatio: childAspectRatio,
        crossAxisSpacing: defaultPadding,
        mainAxisSpacing: defaultPadding,),
        itemBuilder: (context, index) => ProjectCard(
          project: demo_projects[index],
        ),
      );
  }
}

