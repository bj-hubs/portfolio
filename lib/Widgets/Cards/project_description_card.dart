import 'package:flutter/material.dart';
import 'package:portfolio/Shared/global.dart';

class ProjectDescriptionCard extends StatelessWidget {
  final String title;
  final String desc;
  final double width;
  final double fontSize;

  const ProjectDescriptionCard({
    Key key,
    @required this.title,
    @required this.desc,
    @required this.width, @required this.fontSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 15),
      child: Container(
        width: width,
        decoration: Global.cardBoxDecoration,
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  title,
                  style: TextStyle(fontSize: fontSize + 25),
                ),
              ),
              Text(
                desc,
                style: TextStyle(fontSize: fontSize),
              ),
            ],
          ),
        ),
      ),
    );
  }
}