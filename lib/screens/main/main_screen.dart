import 'package:flutter/material.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/responsive.dart';
import 'package:portfolio/screens/main/components/side_menu.dart';

class MainScreen extends StatelessWidget{
  const MainScreen({super.key, required this.children});

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // we are hiding the app bar on desktop
      appBar: Responsive.isDesktop(context)  
          ? null 
          : AppBar(
              backgroundColor: bgColor,
              leading: Builder(
                builder: (context) => IconButton(
                  onPressed: () => Scaffold.of(context).openDrawer(),
                  icon: const Icon(Icons.menu),
                ),
              ),
            ),
      drawer: SideMen(),      
      body: Center(
        child: Container(
          constraints: BoxConstraints(maxWidth: maxWidth),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if(Responsive.isDesktop(context))
                // Now each take 50% of the screen width
                Expanded(
                  // Now this take 75%
                  // Now this take (2+7 = 9) = 2/9 of the screen width means 22% 
                  flex: 2,
                  child: SideMen()
                ),
                SizedBox(width: defaultPadding),
                Expanded(
                  // Now this take 75%
                  // Now this take (2+7 = 9) = 7/9 of the screen width means 78%
                  flex: 7,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        ...children,
                        // our footer
                      ],
                    ),
                  )
                ),
             ],
          ),
        ),
      ),
    );   
  }
}

