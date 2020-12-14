import 'dart:ffi';
import 'package:latabus/models/geo_location_model.dart';

class StopBuses{
  List<StopBus> items=new List();
  StopBuses();
  StopBuses.fromJsonList(List<dynamic>jsonList){
    if(jsonList==null) return ;
    for(var item in jsonList){
      final stopBus =new StopBus.fromJsonMap(item);
      item.add(stopBus);

    }

  }
}
class StopBus{
  String name;
  Geolocation location;
  StopBus({this.name, this.location});
  StopBus.fromJsonMap(Map<dynamic,dynamic>json){
    if(json != null){
      name=json['name'];
      location=Geolocation.fromJsonMap(json['location']);
    }
  }
}