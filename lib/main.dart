import 'package:flutter/material.dart';
void main(){
  runApp(
    MaterialApp(
      title: 'hello',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple,
          title: Text('flutter devoloper'),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: (){
                    print('click me');
                  },
                  child:
                  Text('Send',
                    style: TextStyle(
                      color: Colors.white,
                    ),),


                ),
              ),
              Icon(Icons.add_a_photo,size: 50,color: Colors.red,),
              TextButton(onPressed: (){
                print('jala ontor jala');
              }, child: Text('Click me ',style: TextStyle(
                color: Colors.blue,
                fontSize: 25,
              ),)),
              IconButton(onPressed: (){
                print('This is icon button');
              }, icon: Icon(Icons.add_a_photo,size: 50,color: Colors.red,)),


              InkWell(
                onTap: (){
                  print("i am inkweel");
                },



                child: Container(

                  height: 200,
                  width: 200,
                  margin: EdgeInsets.only(top: 50),
                  padding: EdgeInsets.all(20),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.pink,
                    borderRadius: BorderRadius.circular(15),
                    gradient: LinearGradient(colors:[
                      Colors.orange,
                      Colors.redAccent,
                      Colors.red,
                    ] ),
                    border: Border.all(color: Colors.green),
                    boxShadow:[
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 10,
                        offset:Offset (5,5),
                        spreadRadius: 5,
                      ) ,
                    ],
                  ),

                  child: Text('This is a Container',
                    style: TextStyle(color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),),
                ),
              ),

              GestureDetector(
                onTap: (){
                  print("i am GestureDetector");
                },



                child: Container(

                  height: 200,
                  width: 200,
                  margin: EdgeInsets.only(top: 50),
                  padding: EdgeInsets.all(20),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.pink,
                    borderRadius: BorderRadius.circular(15),
                    gradient: LinearGradient(colors:[
                      Colors.orange,
                      Colors.redAccent,
                      Colors.red,
                    ] ),
                    border: Border.all(color: Colors.green),
                    boxShadow:[
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 10,
                        offset:Offset (5,5),
                        spreadRadius: 5,
                      ) ,
                    ],
                  ),

                  child: Text('This is a Container',
                    style: TextStyle(color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),),
                ),
              ),
            ],
          ),
        ),



      ),
    ),


  );
}

