import 'dart:convert';

List<Devise>userFromJson(String data) =>List<Devise>.from(jsonDecode(data).map((x) =>Devise.fromJson(x)));
String artToData(Devise art) => jsonEncode(art.toJson());


class Devise {
  late String name;
  late String brend;
  late String modeli;
  late String color;
  late int relaseyear;

  Devise({
    required this.name,
    required this.brend,
    required this.modeli,
    required this.color,
    required this.relaseyear
  });
  Devise.fromJson(Map<String, dynamic> json){
    name = json["name"];
    brend = json["brend"];
    modeli = json["modeli"];
    color = json["color"];
    relaseyear = json["relaseyear"];

  }
  Map<String, dynamic> toJson() => {
    "name": name,
    "brend" : brend ,
    "model" : modeli,
    "color" : color,
    "relaseyear" : relaseyear,
  };

  @override
  String toString() {
    return 'Devise{name: $name, brend: $brend, modeli: $modeli, color: $color, relaseyear: $relaseyear}';
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
}
class Camera {
  late String resolution;
  late String videocapability;

}
