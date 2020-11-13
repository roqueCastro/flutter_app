import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app/src/screens/second_page.dart';


class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String name;
  String lastname;
  String direccion;

  List<int> top = [];

  TextEditingController nameControler;
  TextEditingController lastNameControler;
  TextEditingController direccionControler;

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    const Key centerKey = ValueKey('bottom-sliver-list');
    return Scaffold(
      appBar: AppBar(
        title: Text("Clases flutter"),
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Form(
              key: formKey,
              child: Column(
                children: <Widget>[
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: "Nombre:",
                    ),

                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: "Telefono:"),
                    keyboardType: TextInputType.phone,
                  ),
                  RaisedButton(
                    child: Text("Pagina 2"),
                    onPressed: () {
                      // _showPageSecound(context);
                    },
                  ),
                  RaisedButton(
                    child: Text("tercer "),
                    onPressed: () {
                      _showPageTercer(context);
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.keyboard),
                    onPressed: () {
                      _showPageTeclado(context);
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.menu_open),
                    onPressed: () {
                      _showPageDrawer(context);
                    },
                  ),
                  FlatButton(
                    child: Text("Animations"),
                    onPressed: () =>   _showPageAnimation(context),
                  ),
                ],
              ),
            ),
          ),
        ]
      ),
    );
  }

  void _showPageSecound(BuildContext context) {
    //Primera forma de enviar a un activity
    // final route = MaterialPageRoute(builder: (BuildContext context){
    //   return SecondPage(name: "Marvin",);
    // });
    // Navigator.of(context).push(route);

    //validar form
    if (formKey != null && formKey.currentState.validate()) {
      formKey.currentState.save();

      //
      Navigator.of(context).pushNamed("/second",
          arguments: SecondPageArguments(name: name, lastName: lastname));
    }

    //segunda forma y mas facil..
  }

  @override
  void initState() {
    nameControler = TextEditingController();
    lastNameControler = TextEditingController();
    direccionControler = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    nameControler.dispose();
    lastNameControler.dispose();
    direccionControler.dispose();
    super.dispose();
  }

  _onClicTelcado(BuildContext context) {
    // Navigator.of(context).pushNamed( "/teclad");
  }

  void _showPageTercer(BuildContext context) {
    Navigator.of(context).pushNamed( "/tercer");
  }

  void _showPageTeclado(BuildContext context) {
    Navigator.of(context).pushNamed( "/teclado");
  }

  void _showPageDrawer(BuildContext context) {
    Navigator.of(context).pushNamed( "/drawer");
  }

  void _showPageAnimation(BuildContext context) {
    Navigator.of(context).pushNamed( "/animation");
  }
}
