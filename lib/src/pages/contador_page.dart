import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget{
  @override
  createState(){
    return _ContadorPageState();
  }
}

class _ContadorPageState extends State<ContadorPage>{

  int _conteo=0;
  final TextStyle _estilo=TextStyle(fontSize: 25);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         title: Text("Titulo"),
         centerTitle: true,
       ),
       body:Center(
         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           children: <Widget>[
             Text("Numero de Click",style: _estilo,),
             Text('$_conteo',style: _estilo)
           ],
         ),
       ),
       floatingActionButton: _crearBotones(),
       );
  }

  Widget _crearBotones(){
    return 
    Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox(width: 30.0),
        FloatingActionButton(child: Icon(Icons.exposure_zero), 
          onPressed: _reset,
        ),
        Expanded(child: SizedBox()),
        FloatingActionButton(child: Icon(Icons.remove), 
          onPressed: _sustraer,
        ),
        SizedBox(width: 30.0,),
        FloatingActionButton(child: Icon(Icons.add), 
          onPressed: _agregar,
        ),
      ],
    );
  }

  void _agregar(){
    setState(() =>_conteo++);
  }
  void _sustraer(){
    setState(()=>_conteo--);
  }
  void _reset(){
    setState(()=>_conteo=0);
  }
}