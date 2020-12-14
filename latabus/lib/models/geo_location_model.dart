class Geolocation {
  String longitud;
  String latitude;
  Geolocation({this.longitud, this.latitude});
  Geolocation.fromJsonMap(Map<dynamic,dynamic>json){
    if(json != null){
      longitud=json['longitud'];
      latitude=json['latitude'];
    }
  }
}