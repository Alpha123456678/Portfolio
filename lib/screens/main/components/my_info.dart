import 'package:flutter/material.dart';

class MyInfo extends StatelessWidget {
  const MyInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.23,
      child: Container(
      color: Color(0xFF242430),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Spacer(flex: 2,),
            Container(
              clipBehavior: Clip.hardEdge,
              height: 100,
              width: 100,
              decoration: BoxDecoration(shape: BoxShape.circle),
              child: Image.asset(
                "assets/images/IMG_20250207_213717_487.jpg",
                fit: BoxFit.contain
              ),
            ),
          Spacer(),
          Text(
            "Nandini",
            style: TextStyle(color: Colors.white)),
          Text(
            "Flutter Developer",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.w200,
              height: 1.5,
            ),
          ),
          Spacer(flex: 2,),  
        ],
      ),)
    );
  }
}

