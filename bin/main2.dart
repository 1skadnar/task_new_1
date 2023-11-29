import 'dart:convert';
import 'package:http/http.dart';
import 'model/class2.dart';
import 'network/serrvice.dart';


/*void main()async{
String data =await NetworkServise.getData(NetworkServise.apimah );
  List< Devise> users = userFromJson(data );
  users.forEach((element) async {
  print(element);


  // Devise user = Devise(name: "Samsung", brend: brend, modeli: modeli, color: color, relaseyear: relaseyear, operatingsystem: operatingsystem)

  // Map<String ,dynamic> json = user.toJson();

  String body = jsonEncode(json);

  Uri url = Uri.https(NetworkServise.baseUrl, NetworkServise.apimah);

  Response response = await post(url, body: body);
  if (response.statusCode == 200 || response.statusCode == 201) {
    print("Succesfully posted :  ${response.body}");
  } else {
    print(" something is wrong${response.statusCode}");
  }
  };
}*/


