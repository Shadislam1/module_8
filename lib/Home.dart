
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int _count = 0;
  incrementCounter(){

    setState(() {
      _count++;
    });
    print(_count);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(" Pro"),
      ),
      body: Center(
        child: Text(_count.toString(),style: TextStyle(
          fontSize: 50,
        ),),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: incrementCounter,child: Icon(Icons.add),
      ),
    );

  }
}
