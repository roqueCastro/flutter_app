import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Material app",
        home: Scaffold(
          appBar: AppBar(
            title: Text("Uso del scaffold"),
          ),
          body: Center(
              child: Image.network(
            "https://static.iris.net.co/soho/upload/images/2020/2/10/61074_1.jpg",
            height: 100,
          )),  //endBODY
          floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: () {},
          ),
          drawer: Drawer(),
        ));
  }
}
