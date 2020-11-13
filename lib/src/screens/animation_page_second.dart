import 'package:flutter/material.dart';

class AnimationPageSecond extends StatelessWidget{
  const AnimationPageSecond({Key key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
     
    final String url = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: AppBar(
        title: Text("Second"),
        backgroundColor: Colors.orange,
      ),
      body: Hero(
        tag: url,
        child: FadeInImage.assetNetwork(
          image: "$url/370/300",
          placeholder: "assets/refresh.gif",
        ),
      ),
    );
  }


}
