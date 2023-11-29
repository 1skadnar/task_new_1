import 'dart:convert';

import 'package:http/http.dart';

import 'network/serrvice.dart';


void main()async{
/*String data =await NetworkServise.getData(NetworkServise.apimah );
  List< User> users = userFromJson(data );
  users.forEach((element) async {
    print(element.comment);*/

  /*Food user = Food(dishName: "Salomat", ingredients: [], preparationSteps: ['aaa','s','qw'], nutritionalInformation:);*/

  // Map<String ,dynamic> json = user.toJson();

  String body = jsonEncode(json);

  Uri url = Uri.https(NetworkServise.baseUrl ,NetworkServise.apimah);

  Response response = await post(url, body: body);
  if(response.statusCode == 200 || response.statusCode == 201){
    print("Succesfully posted :  ${response.body}");
  }else{
    print(" something is wrong${response.statusCode}");
  }

}