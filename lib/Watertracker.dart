import 'package:flutter/material.dart';
import 'package:module_8/widget/addWater.dart';
class Watertracker extends StatefulWidget {
  const Watertracker({super.key});

  @override
  State<Watertracker> createState() => _WatertrackerState();
}

class _WatertrackerState extends State<Watertracker> {
  int _currentintake = 0;
  final int _goal = 2000;
  void _waterAdd(int amount){
    setState(() {
      if(_currentintake<_goal){
        _currentintake = ( _currentintake+amount).clamp(0, _goal);
      }
    });
  }
  void resetWater(){
    setState(() {
      _currentintake =0;
    });
  }
  @override
  Widget build(BuildContext context) {
    double progress =(_currentintake/_goal).clamp(0.0, 1.0);
    return Scaffold(
      appBar: AppBar(
        title: Text("Water Tracker"),
        centerTitle: true,
        backgroundColor: Colors.blue.shade50,
      ),
      body: Center(

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 30,),
            Container(
              padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                 color: Colors.blue.withOpacity(0.2),
                 blurRadius: 10,
                 spreadRadius: 2,
                )
              ],

            ),
            child: Column(
              children: [
                Text("Today's Intake",style:
            TextStyle(fontSize: 14,fontWeight: FontWeight.bold,
                color: Colors.black
            ),),
                SizedBox(height: 10,),
                Text("${_currentintake} ml",style:
                TextStyle(fontSize: 28,fontWeight: FontWeight.bold,
                  color: Colors.blue
                  ),)
              ],
            ),
            ),
            SizedBox(height: 10,),
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  height: 150,
                    width: 150,
                  child: CircularProgressIndicator(
                    backgroundColor: Colors.tealAccent,
                    color: Colors.blueAccent,
                    value: progress,
                    strokeWidth: 10,
                  ),
                ),
                Text('${(progress * 100).toInt()} %',style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold),),
                SizedBox(height: 40,),




              ],
            ),
          SizedBox(height: 40,),
            Wrap(
              spacing: 15,
              children: [

                addWater(amount: 200,icon: Icons.local_drink,onClick: ()=>_waterAdd(200),),
                addWater(amount: 500,icon: Icons.water_drop,onClick: ()=>_waterAdd(500),),
                addWater(amount: 1000,icon: Icons.local_cafe,onClick: ()=>_waterAdd(1000),),

                SizedBox(height: 40,),
                SizedBox(

                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red
                      ),
                        onPressed: ()=> resetWater(),
                        child: Text("Reset",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,),)),
                  ),
                ),
              ],),
          ],
        ),
      ),
    );
  }
}


