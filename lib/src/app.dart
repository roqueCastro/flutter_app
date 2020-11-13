


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/src/screens/animation_page.dart';
import 'package:flutter_app/src/screens/animation_page_second.dart';
import 'package:flutter_app/src/screens/drawer_page.dart';
import 'package:flutter_app/src/screens/my_home_page.dart';
import 'package:flutter_app/src/screens/second_page.dart';
import 'package:flutter_app/src/screens/teclado_page.dart';
import 'package:flutter_app/src/screens/tercer_page.dart';


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      //DEFINIR LAS  RUTTAS DE LA PAGINA
      //home: MyHomePage());
      initialRoute: "/",
      routes: {
        "/":(BuildContext context)=> MyHomePage(),
        "/second":(BuildContext context)=> SecondPage(),
        "/tercer":(BuildContext context)=> TercerPage(),
        "/teclado":(BuildContext context)=> TecladoPage(),
        "/drawer":(BuildContext context)=> DrawerPage(),
        "/animation":(BuildContext context)=> AnimationPage(),
        "/animation_second":(BuildContext context)=> AnimationPageSecond(),
      },
    );
  }
}