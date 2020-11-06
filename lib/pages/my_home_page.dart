import 'package:flutter/material.dart';
import 'package:flutter_app/pages/second_page.dart';

class MyHomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Clases flutter"),
      ),
      body: Center(
        child: RaisedButton(
          child: Text("Pagina 2"),
          onPressed: (){
            _showPageSecound(context);
          },
        ),
      ),
    );
  }

  void _showPageSecound(BuildContext context) {
    //Primera forma de enviar a un activity
    // final route = MaterialPageRoute(builder: (BuildContext context){
    //   return SecondPage(name: "Marvin",);
    // });
    // Navigator.of(context).push(route);

    //segunda forma y mas facil..
    Navigator.of(context).pushNamed(
        "/second", arguments: SecondPageArguments(
          name:"Roque",
          lastName: "Castro garzon"
        )
    );
  }

  
}
