import 'dart:html';
import 'package:flutter/material.dart';
import 'package:hci_final_project/widget_view.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class Showcase extends StatefulWidget {
  @override
  ShowcaseState createState() => ShowcaseState();
}

class ShowcaseState extends State<Showcase> {
  bool expanded;
  @override
  Widget build(BuildContext context) => ShowcaseView(this);

  @override
  initState() {
    expanded = false;
    super.initState();
  }

  YoutubePlayerController controller = new YoutubePlayerController(
    initialVideoId: "dQw4w9WgXcQ",
  );

  void toggleExpanded() {
    setState(() {
      expanded = !expanded;
    });
  }
}

class ShowcaseView extends WidgetView<Showcase, ShowcaseState> {
  ShowcaseView(ShowcaseState state) : super(state);
  Widget build(BuildContext content) {
    final testContainer = Expanded(
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(width: 1),
        ),
      ),
    );

    Size size = MediaQuery.of(content).size;
    final testBox = SizedBox(
      height: 20,
      child: Text("Item"),
    );
    final listItem = ListTile(
      contentPadding: EdgeInsets.all(5),
      title: Text("List item"),
    );

    final headerButton = OutlinedButton(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        children: [
          state.expanded ? Icon(Icons.arrow_back) : Text("Rankings"),
          SizedBox(
            width: 10,
          ),
          state.expanded ? Text("Rankings") : Icon(Icons.arrow_forward),
        ],
      ),
      onPressed: () => state.toggleExpanded(),
    );

    final expandedChild = Column(
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [headerButton, testContainer],
    );

    final collapsedChild = headerButton;

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      drawer: Drawer(
        child: DrawerHeader(
          child: Text("Edit rankings"),
        ),
      ),
      body: SafeArea(
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
                    child: Container(
                      height: size.height * .5,
                      decoration: BoxDecoration(
                        border: Border.all(width: 1),
                      ),
                      child: YoutubePlayerIFrame(
                        controller: state.controller,
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
    );
  }
}
