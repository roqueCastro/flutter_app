import 'package:flutter/material.dart';

class AnimationPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return AnimationPageState();
  }
}

class AnimationPageState extends State<AnimationPage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        title: Text(
          "Animations",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.black,
      ),
      body: ListView.builder(
        itemCount: 50,
        itemBuilder: (context, index) {
          final url = "https://picsum.photos/id/$index";
          return InkWell(
            onTap: () {
              Navigator.of(context)
                  .pushNamed("/animation_second", arguments: url);
            },
            child: Hero(
              tag: url,
              child: Card(
                child: FadeInImage(
                  image: NetworkImage("$url/400/300?index=$index"),
                  placeholder: AssetImage("assets/refresh.gif"),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
