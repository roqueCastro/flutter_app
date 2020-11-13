import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key key}): super(key: key);

  @override
  Widget build(BuildContext context) {

    SecondPageArguments arguments = ModalRoute.of(context).settings.arguments;

      return Scaffold(
        appBar: AppBar(
          title: Text("SecondPage"),
        ),
        body: Center(
          child: Column(

            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("Nombre:"),
                  Text(arguments.name),
                ],
              ),
              Text(arguments.name),
              Text(arguments.lastName),
            ],
          ),
        ),
      );
  }
}

class SecondPageArguments{
  String name;
  String lastName;

  SecondPageArguments({this.name, this.lastName});
}
  

