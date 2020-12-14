import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:latabus/models/line_model.dart';
import 'package:latabus/models/stop_bus_model.dart';

class LinesWidget extends StatelessWidget {
  const LinesWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   //List<dynamic> data =json.decode('[{"name":"Linea1"}]');
   //StopBuses _list = StopBuses.fromJsonList(data);
    List<dynamic> data = json.decode(
        '[ {	"name" : "Niágara - Bellavista",	"operate" : "Sultana de Cotopaxi",	"start": {		"name" : "Gasolinera Bellavista",		"location" : {			"longitud" : "-78.61388",			"latitude" : "-0.87834"				}	}},{	"name" : "Calzacuero - San Buenaventura" }]');

    LinesBus _list = LinesBus.fromJsonList(data);
    return ListView( //conjunto de elementos 
      children:_list.items.map((e){
        return ListTile(
            trailing: Icon(Icons.arrow_drop_down),
            leading : Icon(Icons.airport_shuttle),
            title:Text(e.name),
            subtitle :Text(e.operate ?? "")
          );
        }).toList(),
    );
  }
}