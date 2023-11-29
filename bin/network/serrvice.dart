import 'package:http/http.dart';

class NetworkServise{
  static final  String baseUrl = "6554a27063cafc694fe6bbeb.mockapi.io";
  static final String apimah = "/User";

  static Future < String> getData(String api )async{
    Uri url = Uri.https(baseUrl , api);
    Response response = await get(url);
    if(response.statusCode == 200 || response.statusCode == 201){
      return response. body;
    }else{
      return " something is wrong${response.statusCode}";
    }

  }
}