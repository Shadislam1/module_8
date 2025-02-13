
import 'package:flutter/material.dart';
class Module9class2 extends StatelessWidget {
  const Module9class2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Module 9"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          // Container(
          //   color: Colors.amber,
          //   child: AspectRatio(
          //       aspectRatio: 16/9,
          //   ),
          // ),
          Center(
            child: SizedBox(
              height: 100,
                width: 250,
              child: Container(

                color: Colors.green,
              ),


            ),
          ),

          // SizedBox(height: 20,),
          // Container(
          //   color: Colors.amber,
          //   height: 250,
          //   width: 250,
          //   child: FractionallySizedBox(
          //     heightFactor: 0.4,
          //     widthFactor: 0.7,
          //     child: Container(
          //       color: Colors.pink,
          //       child: Text("Hello worls"),
          //     ),
          //
          //
          //   ),
          // ),

          SizedBox(
            height: 200,
            width: 200,
            child: Column(
              children: [

                Expanded(
                  flex: 1,  // Corrected this line
                  child: Container(
                    color: Colors.amberAccent,
                  ),
                ),
                Expanded(
                  flex: 2,  // Corrected this line
                  child: Container(
                    color: Colors.black,
                  ),
                )

              ],
            ),
          ),
          SizedBox(height: 20,),
          Container(
            child: Stack(
              children: [
                Container(
                  color: Colors.green,
                  height:250,
                  width: 250,
                ),
                Container(
                  color: Colors.red,
                  height:150,
                  width: 150,
                ),
                Container(
                  color: Colors.blue,
                  height:50,
                  width: 50,
                ),

              ],
            ),
          )

        ],
      ),
    );
  }
}
