import 'package:flutter/material.dart';

class TecladoPage extends StatefulWidget {

  const TecladoPage({Key key}) : super(key: key);

  @override
  _TecladoPageState createState() => _TecladoPageState();
}

class _TecladoPageState extends State<TecladoPage> {
  String name;
  String lastName;

  @override
  Widget build(BuildContext context) {

    final formKey = GlobalKey<FormState>();

     return Scaffold(
      appBar: AppBar(
        title: Text("Tipo de teclado"),
        backgroundColor: Colors.purple[900],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: formKey,
          child: Column(
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(labelText: "Nombre:",),
                validator: (value){
                  // ignore: missing_return, missing_return
                  if(value.isEmpty){
                    return "Llene este campo";
                  }
                  return null;
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: "Telefono:"),
                validator: (value){
                    if(value.isEmpty){
                      return "Llene este campo";
                    }
                    return null;
                },
              ),

              RaisedButton(
                child: Text("Pagina 2"),
                onPressed: (){
                  _showPageSecound(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showPageSecound(BuildContext context) {

  }
}