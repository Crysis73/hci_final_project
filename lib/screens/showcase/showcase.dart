import 'dart:html';

import 'package:flutter/material.dart';
import 'package:hci_final_project/widget_view.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class Showcase extends StatefulWidget {
  @override
  ShowcaseState createState() => ShowcaseState();
}

class ShowcaseState extends State<Showcase> {
  @override
  Widget build(BuildContext context) => ShowcaseView(this);

  YoutubePlayerController controller = new YoutubePlayerController(
    initialVideoId: "dQw4w9WgXcQ",
  );
}

class ShowcaseView extends WidgetView<Showcase, ShowcaseState> {
  ShowcaseView(ShowcaseState state) : super(state);
  Widget build(BuildContext content) {
    final testContainer = Container(
      decoration: BoxDecoration(
        border: Border.all(width: 5),
      ),
    );
    Size size = MediaQuery.of(content).size;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(child: testContainer),
            Container(
              width: size.width * .6,
              decoration: BoxDecoration(
                border: Border.all(width: 1),
              ),
              child: Stack(
                children: [
                  SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Padding(
                          padding: EdgeInsets.all(20),
                          child: Text(
                            'Temporary Title',
                            style: TextStyle(fontSize: 48),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(20),
                          child: Container(
                            height: size.height * .5,
                            decoration: BoxDecoration(
                              border: Border.all(width: 1),
                            ),
                            child: YoutubePlayerIFrame(
                              controller: state.controller,
                              //onReady: () { state.controller.addListener(listener)},
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(20),
                          child: Text(
                            "Lots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of textLots of text",
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            icon: Icon(
                              Icons.arrow_left,
                              size: 20,
                            ),
                            onPressed: () => {},
                            iconSize: 20,
                          ),
                          Icon(Icons.circle),
                          Icon(Icons.circle),
                          Icon(Icons.circle),
                          Icon(Icons.circle),
                          Icon(Icons.circle),
                          Icon(Icons.circle),
                          IconButton(
                            icon: Icon(
                              Icons.arrow_right,
                              size: 20,
                            ),
                            onPressed: () => {},
                            iconSize: 20,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(child: testContainer),
          ],
        ),
      ),
    );
  }
}
