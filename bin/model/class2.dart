import 'dart:convert';

List<Devise>userFromJson(String data) =>List<Devise>.from(jsonDecode(data).map((x) =>Devise.fromJson(x)));
String artToData(Devise art) => jsonEncode(art.toJson());


class Devise {
  late String name;
  late String brend;
  late String modeli;
  late String color;
  late int relaseyear;
  late String operatingsystem;
  Display? display;
  Pocessor? pocessor;
  Memory? memory;
  Camera? camera;
  Front? front;
  Battery? battery;
  Connectivity? connectivity;
  OperatingSystem? operatingSystem;


  Devise({
    required this.name,
    required this.brend,
    required this.modeli,
    required this.color,
    required this.relaseyear,
    required this.operatingsystem
  });
  Devise.fromJson(Map<String, dynamic> json){
    name = json["name"];
    brend = json["brend"];
    modeli = json["modeli"];
    color = json["color"];
    relaseyear = json["relaseyear"];
    operatingsystem = json["operatingsystem"];

  }
  Map<String, dynamic> toJson() => {
    "name": name,
    "brend" : brend ,
    "model" : modeli,
    "color" : color,
    "relaseyear" : relaseyear,
    "operatingsystem" : operatingsystem,
  };

  @override
  String toString() {
    return 'Devise{name: $name, brend: $brend, modeli: $modeli, color: $color, relaseyear: $relaseyear , operatingsystem :$operatingsystem}';
  }
}
class Display {
  late String type ;
  late num size;
  late String resolution;

  Display({
    required this.type,
    required this.size,
    required this.resolution,
  });
  Display.fromJson(Map<String, dynamic> json){
    type = json["type"];
    size = json["size"];
    resolution = json["resolution"];
  }
  Map<String, dynamic> toJson() => {
    "type": type,
    "size": size,
    "resolution": resolution,
  };

  @override
  String toString() {
    return 'Display{type: $type, size: $size, resolution: $resolution}';
  }
}
class Pocessor {

  late String manufacturer;
  late String model;
  late String cores;
  late String clocspeed;


  Pocessor({
    required this.manufacturer,
    required this.model,
    required this.cores,
    required this.clocspeed,

  });

  Pocessor.fromJson(Map<String, dynamic> json){
    manufacturer = json["manufacturer"];
    model = json["model"];
    cores = json["cores"];
    clocspeed = json["clocspeed"];
  }

  Map<String, dynamic> toJson() =>
      {
        "manufacturer": manufacturer,
        "model": model,
        "cores": cores,
        "clocspeed": clocspeed,
      };

  @override
  String toString() {
    return 'Pocessor{manufacturer: $manufacturer, model: $model, cores: $cores, clocspeed: $clocspeed}';
  }
}
class Memory{
  late String ram;
  late String storge;
  late bool expandablestorage;
  late String maxexpandable;

  Memory(this.ram, this.storge, this.expandablestorage, this.maxexpandable);

  Memory.fromJson(Map<String, dynamic> json){
    ram = json["ram"];
    storge = json["storge"];
    expandablestorage = json["expandablestorage"];
    maxexpandable = json["maxexpandable"];
  }

  Map<String, dynamic> toJson() =>
  {
  "ram": ram,
  "storge": storge,
  "expandablestorage": expandablestorage,
  "maxexpandable": maxexpandable,
  };

  @override
  String toString() {
    return 'Memory{ram: $ram, storge: $storge, expandablestorage: $expandablestorage, maxexpandable: $maxexpandable}';
  }
}
class Camera {
  late String resolution;
  late String videocapability;
  Camera(this.resolution, this.videocapability);
  Camera.fromJson(Map<String, dynamic> json){
    resolution = json["resolution"];
    videocapability = json["videocapability"];
  }
  Map<String, dynamic> toJson() =>
      {
        "resolution": resolution,
        "videocapability": videocapability,
      };

  @override
  String toString() {
    return 'Camera{resolution: $resolution, videocapability: $videocapability}';
  }
}
class Front{
  late String resolution;
  late String videocapability;


  Front(this.resolution, this.videocapability);

  Front.fromJson(Map<String, dynamic> json){
    resolution = json["resolution"];
    videocapability = json["videocapability"];
  }
  Map<String, dynamic> toJson() =>
      {
        "resolution": resolution,
        "videocapability": videocapability,
      };

  @override
  String toString() {
    return 'Front{resolution: $resolution, videocapability: $videocapability}';
  }
}
class Battery{
  late String capacity;
  late String type;
  late bool removable;

  Battery(this.capacity, this.type, this.removable);
  Battery.fromJson(Map<String, dynamic> json){
    capacity = json["capacity"];
    type = json["type"];
    removable = json["removable"];


  }
  Map<String, dynamic> toJson() => {
    "capacity": capacity,
    "type" : type ,
    "removable" : removable,
  };

  @override
  String toString() {
    return 'Battery{capacity: $capacity, type: $type, removable: $removable}';
  }
}
class Connectivity{
  late String network;
  late String wifi;
  late String bluetooh;
  late List<String>prots;

  Connectivity(this.network, this.wifi, this.bluetooh, this.prots);
  Connectivity.fromJson(Map<String, dynamic> json){
    network = json["network"];
    wifi = json["wifi"];
    bluetooh = json["bluetooh"];
    prots = List<String>.from(json["prots"].map((x)=> x));
  }
  Map<String, dynamic> toJson() => {
    "network": network,
    "wifi" : wifi ,
    "bluetooh" : bluetooh,
    "prots" : List.from(prots.map((x) => x)),
  };

  @override
  String toString() {
    return 'Connectivity{network: $network, wifi: $wifi, bluetooh: $bluetooh, prots: $prots}';
  }
}
class OperatingSystem{

}

