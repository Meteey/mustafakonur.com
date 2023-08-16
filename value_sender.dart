import 'dart:convert';
import 'package:http/http.dart' as http;
class ServerConnectionExample{
  String value;
  ServerConnectionExample({required this.value});

  Future<String> postData(ServerConnectionExample serverConnectionExample) async{
    String postValue = serverConnectionExample.value;
    final response = await http.post(
      Uri.parse(""), // buraya kopyaladığınız adres gelecek.
      headers: <String,String>{
        'Content-Type' : 'application/json; charset=UTF-8'
      },
      body: jsonEncode(<String, String>{
        'value' : postValue
      }),
    );
    return response.body;
  }
}


