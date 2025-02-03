
import 'package:flutter/material.dart';
import 'package:module_8/Home.dart';

class UserInfo extends StatelessWidget {
  final String name;
  const UserInfo( {super.key,required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text("Page 1"),
      ),
      body: Column(
        children: [
          Text(name,style: TextStyle(fontSize: 40,color: Colors.green),),
          ElevatedButton(
              onPressed: (){
                Navigator.pop(context);
              }, child: Text("Back")
          ),
          ElevatedButton(
              onPressed: (){
                // Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
              }, child: Text("Page")
          ),

        ],
      ),
    );
  }
}