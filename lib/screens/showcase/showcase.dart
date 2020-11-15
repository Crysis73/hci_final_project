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
}

class ShowcaseView extends WidgetView<Showcase, ShowcaseState> {
  ShowcaseView(ShowcaseState state) : super(state);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      primary: true,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        title: Text(
          "CCSC Student Showcase",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ExpandableContainer(
              child: Text("Test Text"),
              expandedWidth: .20,
              headerCollapsedIcon: Icon(Icons.arrow_forward_rounded),
              headerExpandedIcon: Icon(Icons.arrow_back_rounded),
              headerText: Text("Evaluation"),
              textDirection: TextDirection.ltr,
            ),
            VideoPlayer(),
            ExpandableContainer(
              child: Rankings(),
              expandedWidth: .20,
              headerCollapsedIcon: Icon(Icons.arrow_back_rounded),
              headerExpandedIcon: Icon(Icons.arrow_forward_rounded),
              headerText: Text("Rankings"),
              textDirection: TextDirection.rtl,
            ),
          ],
        ),
      ),
    );
  }
}

class Rankings extends StatefulWidget {
  @override
  RankingsState createState() => RankingsState();
}

class RankingsState extends State<Rankings> with TickerProviderStateMixin {
  Key key = new Key("Rankings State");

  @override
  Widget build(BuildContext context) => RankingsView(this);

  List<Widget> items = new List<Widget>();

  void onReorder(int oldIndex, int newIndex) {
    var tmp = items.elementAt(oldIndex);
    items[oldIndex] = items[newIndex];
    items[newIndex] = tmp;
  }
}

class RankingsView extends WidgetView<Rankings, RankingsState> {
  RankingsView(RankingsState state) : super(state);
  Widget build(BuildContext content) {
    final listView = Expanded(
      child: ListView.builder(
        itemCount: 13,
        addRepaintBoundaries: true,
        addAutomaticKeepAlives: true,
        key: state.key,
        restorationId: "Rankings",
        shrinkWrap: true,
        itemBuilder: (context, index) => RankingListItem(index: index),
      ),
    );

    return listView;
  }
}

class RankingListItem extends StatefulWidget {
  final int index;
  RankingListItem({@required this.index});

  @override
  _RankingListItemState createState() => _RankingListItemState(index);
}

class _RankingListItemState extends State<RankingListItem>
    with AutomaticKeepAliveClientMixin {
  int index;

  _RankingListItemState(this.index);

  Widget topThreeCards() {
    return Card(
      borderOnForeground: true,
      child: ListTile(
        key: Key(index.toString()),
        title: Text("List Item Title ${index + 1}"),
        dense: true,
        enabled: true,
        trailing: Icon(Icons.drag_handle),
        leading: Icon(Icons.water_damage_rounded),
        selectedTileColor: Colors.black,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
          side: BorderSide(
            width: 1,
            style: BorderStyle.solid,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);

    if (index + 1 > 3) {
      return Draggable(
        childWhenDragging: Card(),
        feedback: Card(child: Text("List Item Title ${index + 1}")),
        dragAnchor: DragAnchor.child,
        rootOverlay: true,
        child: Card(
          borderOnForeground: true,
          child: ListTile(
            key: Key(index.toString()),
            title: Text("List Item Title ${index + 1}"),
            dense: true,
            enabled: true,
            trailing: Icon(Icons.drag_handle),
            selectedTileColor: Colors.black,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
              side: BorderSide(
                width: 1,
                style: BorderStyle.solid,
              ),
            ),
          ),
        ),
      );
    }

    return DragTarget(
      builder: (context, candidateData, rejectedData) {
        return topThreeCards();
      },
    );
  }

  @override
  bool get wantKeepAlive => true;
}

class ExpandableContainer extends StatefulWidget {
  final Widget child;
  final Widget headerText;
  final Widget headerCollapsedIcon;
  final Widget headerExpandedIcon;
  final double expandedWidth;
  final TextDirection textDirection;

  ExpandableContainer({
    @required this.child,
    @required this.headerText,
    @required this.headerCollapsedIcon,
    @required this.headerExpandedIcon,
    @required this.expandedWidth,
    @required this.textDirection,
  });

  @override
  ExpandableContainerState createState() => ExpandableContainerState(
      child,
      headerText,
      headerCollapsedIcon,
      headerExpandedIcon,
      expandedWidth,
      textDirection);
}

class ExpandableContainerState extends State<ExpandableContainer>
    with TickerProviderStateMixin {
  Widget child;
  Widget headerText;
  Widget headerCollapsedIcon;
  Widget headerExpandedIcon;
  double expandedWidth;
  TextDirection textDirection;
  bool expanded;
  ExpandableContainerState(
      this.child,
      this.headerText,
      this.headerCollapsedIcon,
      this.headerExpandedIcon,
      this.expandedWidth,
      this.textDirection);

  @override
  void initState() {
    expanded = true;
    super.initState();
  }

  @override
  Widget build(BuildContext context) => ExpandableContainerView(this);

  void toggleExpanded() {
    setState(() {
      expanded = !expanded;
    });
  }
}

class ExpandableContainerView
    extends WidgetView<ExpandableContainer, ExpandableContainerState> {
  ExpandableContainerView(ExpandableContainerState state) : super(state);
  Widget build(BuildContext content) {
    Size size = MediaQuery.of(content).size;

    var rowChildren;
    if (state.textDirection == TextDirection.ltr) {
      rowChildren = [
        state.expanded ? state.headerExpandedIcon : state.headerText,
        state.expanded ? state.headerText : state.headerCollapsedIcon,
      ];
    } else {
      rowChildren = [
        state.expanded ? state.headerText : state.headerCollapsedIcon,
        state.expanded ? state.headerExpandedIcon : state.headerText,
      ];
    }

    final headerButton = FlatButton(
      onPressed: () => state.toggleExpanded(),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: rowChildren,
      ),
    );

    final emptyContainer = Container(
      width: 0,
      height: 0,
    );

    return AnimatedSize(
      duration: Duration(milliseconds: 400),
      vsync: state,
      curve: Curves.easeInOut,
      child: Container(
        width: state.expanded ? (size.width * state.expandedWidth) : null,
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            headerButton,
            state.expanded ? state.child : emptyContainer,
          ],
        ),
      ),
    );
  }
}

class VideoPlayer extends StatefulWidget {
  @override
  VideoPlayerState createState() => VideoPlayerState();
}

class VideoPlayerState extends State<VideoPlayer> {
  @override
  Widget build(BuildContext context) => VideoPlayerView(this);

  YoutubePlayerController controller = new YoutubePlayerController(
    initialVideoId: "dQw4w9WgXcQ",
    params: YoutubePlayerParams(
      autoPlay: false,
      desktopMode: true,
      mute: false,
      showFullscreenButton: true,
    ),
  );
}

class VideoPlayerView extends WidgetView<VideoPlayer, VideoPlayerState> {
  VideoPlayerView(VideoPlayerState state) : super(state);
  Widget build(BuildContext content) {
    Size size = MediaQuery.of(content).size;

    final divider = Divider(
      color: Colors.black38,
    );

    final header = Wrap(
      clipBehavior: Clip.antiAlias,
      children: [
        Text(
          "Test Title",
          style: TextStyle(
            fontSize: 36,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );

    final text = Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Wrap(
          clipBehavior: Clip.antiAlias,
          children: [
            Text(
              "Summary",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
            divider,
            Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer scelerisque nisl vel est congue hendrerit. Mauris facilisis facilisis urna id placerat. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nullam tristique non arcu ut tincidunt. Proin convallis purus at leo lacinia lobortis. Fusce et sem vitae diam cursus rutrum. Donec accumsan sollicitudin condimentum. Nulla ipsum ante, fermentum ut sem vitae, sodales rhoncus arcu. Vestibulum eget nisl tempor, pellentesque ipsum vitae, mollis massa. Proin porttitor nunc et iaculis suscipit. Sed nec arcu nec ligula posuere scelerisque. Suspendisse vitae venenatis lectus. Vestibulum in dui eget erat dictum mollis sed laoreet velit. Vivamus id consectetur nisl. Aliquam tristique augue feugiat mauris pharetra dictum.\n\nSed id tristique nunc. Pellentesque sed interdum eros, tempus ullamcorper lacus. Aenean porttitor vel ligula sit amet consectetur. Aenean congue tincidunt neque, ut porttitor lorem volutpat ac. Sed tristique nibh leo, quis aliquam sem venenatis in. Etiam in mi mauris. Quisque volutpat lectus sit amet erat mollis facilisis. Integer pellentesque quam in tortor dictum viverra. In vulputate dui nisi, a elementum odio vestibulum eu. Interdum et malesuada fames ac ante ipsum primis in faucibus. Suspendisse non justo hendrerit, rutrum dui luctus, blandit enim. Praesent tempor tristique lacinia. Pellentesque porta urna neque, non vulputate massa porta non. Phasellus sit amet purus sed dolor placerat mattis.\n\nDonec mattis, diam a egestas pellentesque, turpis ligula commodo tellus, nec rhoncus tellus nulla in dolor. Phasellus efficitur efficitur sagittis. Nulla iaculis tortor at magna efficitur, quis sodales ligula laoreet. Praesent ullamcorper dui in eros elementum, sed suscipit quam fermentum. Nulla id diam eu felis egestas mollis. Curabitur volutpat justo sem. Morbi eget ligula eget velit molestie tristique. Cras lacus nisl, venenatis ut magna vel, ornare pellentesque arcu.\n\nVivamus suscipit ipsum urna, sed mattis risus fringilla a. Suspendisse elementum risus sit amet pharetra malesuada. Nullam ac odio consectetur, fringilla orci dictum, semper augue. Suspendisse interdum lacinia sollicitudin. Vestibulum feugiat elementum orci convallis congue. Donec dolor neque, ullamcorper sed turpis at, tempor consectetur quam. Mauris nisl nisl, venenatis quis tellus non, malesuada elementum ipsum. Morbi lacus est, sollicitudin eget mauris eget, auctor feugiat nisi. Nulla facilisi. Aenean arcu enim, euismod et velit nec, venenatis imperdiet massa. Donec bibendum tellus semper lacinia laoreet. Cras aliquam velit justo, id mollis tortor malesuada cursus.\n\nPraesent venenatis sagittis tincidunt. Suspendisse placerat a massa at placerat. Curabitur id dui congue, sodales turpis vel, accumsan nisl. Ut in nulla nibh. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ut diam ultrices felis varius efficitur. Vivamus fermentum nunc quis porttitor vestibulum. Suspendisse auctor, lectus nec iaculis scelerisque, velit diam venenatis purus, nec congue mi risus euismod lectus. Maecenas rutrum justo ac quam finibus pharetra.",
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );

    final videoPlayer = AspectRatio(
      aspectRatio: 16 / 9,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: YoutubePlayerIFrame(
          controller: state.controller,
        ),
      ),
    );

    final videoPlayerCard = Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: EdgeInsets.fromLTRB(20, 20, 20, 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            header,
            videoPlayer,
          ],
        ),
      ),
    );

    return Expanded(
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          border: Border.all(
            width: 1,
            color: Colors.black12,
          ),
          borderRadius: BorderRadius.circular(20),
        ),
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.all(20),
          physics: BouncingScrollPhysics(),
          children: [
            ListBody(
              children: [
                videoPlayerCard,
                divider,
                text,
              ],
            ),
          ],
        ),
      ),
    );
  }
}
