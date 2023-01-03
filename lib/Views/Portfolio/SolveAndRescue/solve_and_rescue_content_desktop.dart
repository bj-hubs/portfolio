import 'package:flutter/material.dart';
import 'package:portfolio/Widgets/Cards/list_container.dart';
import 'package:portfolio/Widgets/Cards/project_header.dart';
import 'package:portfolio/Widgets/Images/carousel_with_indicator.dart';
import 'package:portfolio/Widgets/Videos/video_container.dart';
import 'package:portfolio/Widgets/Cards/title_card.dart';

import '../../../Widgets/Cards/image_with_header_card.dart';
import '../../../Shared/global.dart';
import '../../../Widgets/Images/sizeable_image.dart';

class SolveAndRescueContentDesktop extends StatefulWidget {
  @override
  _SolveAndRescueContentDesktopState createState() =>
      _SolveAndRescueContentDesktopState();
}

class _SolveAndRescueContentDesktopState
    extends State<SolveAndRescueContentDesktop> {
  final ScrollController _scrollController = new ScrollController();
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      controller: _scrollController,
      child: Center(
        child: Container(
          width: size.width,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 50.0),
            child: Column(
              children: [
                Container(
                  width: 800,
                  child: ProjectHeader(
                    picName: 'logos/logo-sr',
                    projectTitle: 'Solve & Rescue',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 30),
                  child: VideoContainer(
                    width: 800,
                    videoURL:
                        'https://firebasestorage.googleapis.com/v0/b/portfolio-6d4f7.appspot.com/o/demos%2Fsolve-and-rescue.mp4?alt=media&token=4136f24a-e9f7-4b18-8158-8b6778d3d1e3',
                  ),
                ),
                Container(
                  width: 800,
                  decoration: Global.cardBoxDecoration,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Solve & Rescue is a math puzzle game developed by Jokey Studio with the support of Sunna Entertainment. Solve puzzle to rescue animals from the aliens, easy right?\nMy role in this game was programmer, integrating gameplay and UI features. Also, I was in-charge of connecting it to playfab, firebase, in-game purchases and ironsource to display ads.',
                          style: TextStyle(fontSize: Global.subtitleFontSize),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 40),
                Container(
                  width: 800,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ListContainer(
                        listTitle: 'Development',
                        itemsList: devList,
                        containerHeight: 390,
                      ),
                      ListContainer(
                          listTitle: 'Resposibilities', itemsList: dutiesList),
                    ],
                  ),
                ),
                SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      decoration: Global.cardBoxDecoration,
                      child: Column(
                        children: [
                          TitleCard(
                            width: 240,
                            title: 'Results',
                            fontSize: Global.subtitleFontSize,
                          ),
                          Container(
                            width: 240,
                            child: CarouselWithIndicator(
                              imgList: imgList,
                              height: 330,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 40),
                    Container(
                      decoration: Global.cardBoxDecoration,
                      height: 450,
                      child: Column(
                        children: [
                          TitleCard(
                            width: 520,
                            title: 'Scan',
                            fontSize: Global.subtitleFontSize,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(top: 50.0, bottom: 20.0),
                            child:
                                SizeableImage(picName: '/QR/QR_SR', width: 285),
                          ),
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  final List<Widget> imgList = [
    smallImage(240, 'carousel/sr/sr-1'),
    smallImage(240, 'carousel/sr/sr-2'),
    smallImage(240, 'carousel/sr/sr-3'),
    smallImage(240, 'carousel/sr/sr-4')
  ];

  void _mouseEnter(bool hovering) {
    setState(() {
      isHover = hovering;
    });
  }

  final List<String> devList = [
    'Genre: Math Puzzles',
    'Engine: Unity 3D C#',
    'Platform: Android & iOS',
    'Game Mode: Single Player'
  ];

  final List<String> dutiesList = [
    'Programming',
    'Art Integration',
    'UI Design',
    'Connection to WebServices',
    'Bug Fixing'
  ];
}
