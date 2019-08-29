import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  final conteo=0;
  final estilo=TextStyle(fontSize: 25);
  @override
  Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: Text("StateFull"),
         centerTitle: true,
       ),
       body:Center(
         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           children: <Widget>[
             Text("Numero de Click",style: estilo,),
             Text('$conteo',style: estilo)
           ],
         ),
       ),
       floatingActionButton: FloatingActionButton(
         child: Icon(Icons.add),
         onPressed: (){

         },
       ) ,
       floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
     );
  }
}