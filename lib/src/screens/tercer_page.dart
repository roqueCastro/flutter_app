
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class TercerPage extends StatefulWidget{
  @override
  _TercerPageState createState() => _TercerPageState();
}

class _TercerPageState extends  State<TercerPage>{
  //Variables
  File _image;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Image Picker"),
        backgroundColor: Colors.red[900],
      ),
      body: Center(
        child: getImageWidget(),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.camera),
        onPressed: () => _showImageSelect(context),
      ),
    );
  }

  //**********************METODOS******************8

  //imprimir image
  Widget getImageWidget(){
    //

    //
    if(_image == null){
      return Text("Seleccione una imagen.");
    }else{
      return Image.file(_image);
    }
  }

  //capturar image
  Future getImage(ImageSource imageSource) async {
    _hidePop(context);
    var image = await ImagePicker.pickImage(source: imageSource);

    setState(() {
      _image = image;
    });
  }

  //seleccionar imagen
  void _showImageSelect(BuildContext context){
    showDialog(
      context: context,
      builder: (context){
        return SimpleDialog(
          children: <Widget>[
            ListTile(
              title: Text("Camara"),
              leading: Icon(Icons.camera_alt_sharp),
              onTap: () => getImage(ImageSource.camera),
            ),
            ListTile(
              title: Text("Galeria"),
              leading: Icon(Icons.photo_album_outlined, color: Colors.black,),
              onTap: () => getImage(ImageSource.gallery),
            ),
          ],
        );
      }
    );
  }


  //cerrar modal

  void _hidePop(BuildContext context){
    Navigator.pop(context);
  }

}