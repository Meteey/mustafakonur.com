// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
class ServerTest extends StatefulWidget {
  @override
  State<ServerTest> createState() => _ServerTestState();
}
class _ServerTestState extends State<ServerTest> {
  TextEditingController txtcontroller = TextEditingController();
  String response = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextFormField(controller: txtcontroller,),
          Text("Sonuç: $response")
        ],
      ),
     floatingActionButton: FloatingActionButton(onPressed: ()async{
      ServerConnectionExample serverConnectionExample = ServerConnectionExample(value: txtcontroller.text);
      response = await serverConnectionExample.postData(serverConnectionExample);
      setState(() {
      });
     }),
    );
  }
}
