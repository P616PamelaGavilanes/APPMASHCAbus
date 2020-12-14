import 'package:latabus/models/stop_bus_model.dart';

class LinesBus{
    List<LineBus> items=new List();
  LinesBus();
  LinesBus.fromJsonList(List<dynamic>jsonList){
    if(jsonList==null) return ;
    for(var item in jsonList){
      final lineBus =new LineBus.fromJsonMap(item);
      item.add(lineBus);

    }

  }
}

class LineBus {
  String name;
  String operate;
  StopBus start;
  StopBus finish;
  StopBuses stops;

  LineBus({this.name,this.operate,this.start,this.finish,this.stops});
  LineBus.fromJsonMap(Map<dynamic,dynamic>json){
    if(json!=null){
      name=json['name'];
      operate=json['operate'];
      start=StopBus.fromJsonMap(json['start']);
      finish=StopBus.fromJsonMap(json['finish']);
      stops=StopBuses.fromJsonList(json['stops']);
    }
  }
}