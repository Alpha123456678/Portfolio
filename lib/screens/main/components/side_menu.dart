import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/screens/main/components/area_info_text.dart';
import 'package:portfolio/screens/main/components/coding.dart';
import 'package:portfolio/screens/main/components/knowledges.dart';
import 'package:portfolio/screens/main/components/my_info.dart';
import 'package:portfolio/screens/main/components/skills.dart';
import 'package:url_launcher/url_launcher.dart';

class SideMen extends StatelessWidget {
  const SideMen({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            MyInfo(),
            Expanded(
              child: SingleChildScrollView(
                padding: EdgeInsets.all(defaultPadding),
                child: Column(
                  children: [
                    AreaInfoText(tittle: "Residence", text: "Uttar Pradesh"),
                    AreaInfoText(tittle: "City", text: "Aligarh"),
                    AreaInfoText(tittle: "Age", text: "22"),
                    Skills(),
                    SizedBox(height: defaultPadding),
                    Coding(),
                    Knowledges(),
                    Divider(),
                    SizedBox(height: defaultPadding / 2),
                    TextButton(
                      onPressed: () async {
                        final url =
                            'https://drive.google.com/file/d/1BiUJ0WaK4cPGbSbIhvTwgJvJLDHYF-WY/view?usp=drive_link'; // Or use a Google Drive/Dropbox link
                        if (await canLaunchUrl(Uri.parse(url))) {
                          await launchUrl(Uri.parse(url),
                              mode: LaunchMode.externalApplication);
                        }
                      },
                      child: FittedBox(
                        child: Row(
                          children: [
                            Text(
                              "Download Resume",
                              style: TextStyle(color: Colors.white),
                            ),
                            SizedBox(width: defaultPadding / 2),
                            SvgPicture.asset("assets/icons/download.svg"),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: defaultPadding),
                      color: Color(0xFF24242E),
                      child: Row(
                        children: [
                          Spacer(),
                          IconButton(
                            onPressed: () {
                              launchUrl(
                                Uri.parse(
                                  "https://www.linkedin.com/in/nandini-singh-534705230?utm_source=share&utm_campaign=share_via&utm_content=profile&utm_medium=android_app",
                                ),
                              );
                            },
                            icon: SvgPicture.asset("assets/icons/linkedin.svg"),
                          ),
                          IconButton(
                            onPressed: () {
                              launchUrl(
                                Uri.parse("https://github.com/Alpha123456678"),
                              );
                            },
                            icon: SvgPicture.asset("assets/icons/github.svg"),
                          ),
                          IconButton(
                            onPressed: () {
                              launchUrl(
                                Uri.parse("mailto:ernandini266@gmail.com"),
                              );
                            },
                            icon: SvgPicture.asset("assets/icons/email.svg"),
                          ),
                          Spacer(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
