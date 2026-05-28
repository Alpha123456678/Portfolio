import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/responsive.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: Responsive.isMobile(context) ? 2.5 : 3,
      child: Stack(
        fit: StackFit.expand,
        children:[
            Image.asset(
              "assets/images/19.jpg",
              fit: BoxFit.cover,
            ),
            Container(
              color: darkColor.withAlpha((0.66 * 255).toInt()),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Building Beautiful Apps,\nOne Widget at a Time",
                    style: Responsive.isDesktop(context) 
                    ? Theme.of(context).textTheme.displayMedium!.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ) : Theme.of(context).textTheme.displaySmall!.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,),
                  ),
                  if(Responsive.isMobileLarge(context))
                      SizedBox(height: defaultPadding / 2),
                  MyBuildAnimatedText(),
                  SizedBox(height: defaultPadding),
                  if(!Responsive.isMobileLarge(context))
                    ElevatedButton(
                      onPressed: (){}, 
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.symmetric(
                          horizontal: defaultPadding * 2,
                          vertical: defaultPadding,),
                        backgroundColor: primaryColor,
                      ),
                      child: Text(
                        "EXPLORE NOW",
                        style: TextStyle(color: darkColor),
                      ),
                    ),
                ],
              ),
            )
          ],
      ),
    );
  }
}

class MyBuildAnimatedText extends StatelessWidget {
  const MyBuildAnimatedText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      // it applies same style to all the widgets under it
      style: TextStyle(
        color: Colors.white,
      ),
      maxLines: 1,
      child: Row(
        children: [
          if(!Responsive.isMobileLarge(context)) FlutterCodedText(),
          if(!Responsive.isMobileLarge(context))
            SizedBox(width: defaultPadding / 2),
          Responsive.isMobileLarge(context) 
               ? Expanded(child: AnimatedText()) 
               : AnimatedText(),
          if(!Responsive.isMobileLarge(context))
            SizedBox(width: defaultPadding / 2),
          if(!Responsive.isMobileLarge(context)) FlutterCodedText(),
        ],
      ),
    );
  }
}

class AnimatedText extends StatelessWidget {
  const AnimatedText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedTextKit(
      animatedTexts: [
        TypewriterAnimatedText(
          "Hi, I'm Nandini 👋", 
          speed: Duration(milliseconds: 60),
        ),
        TypewriterAnimatedText(
          'Flutter Developer 💙',
          speed: Duration(milliseconds: 60),
        ),
        TypewriterAnimatedText(
          'Turning Ideas into Apps 🚀',
          speed: Duration(milliseconds: 60),
        ),
        TypewriterAnimatedText(
          'Build Once, Run Everywhere 🌍',
          speed: Duration(milliseconds: 60),
        ),  
        TypewriterAnimatedText(
          'Code. Design. Deploy.',
          speed: Duration(milliseconds: 60),
        ),
    ],);
  }
}

class FlutterCodedText extends StatelessWidget {
  const FlutterCodedText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: "<",
        children: [
          TextSpan(
            text: "flutter",
            style: TextStyle(
              color: primaryColor,
            ),
          ),
          TextSpan(text: ">"),
        ],
      ),
    );
  }
}