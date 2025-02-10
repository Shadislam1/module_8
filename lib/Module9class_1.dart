import 'package:flutter/material.dart';
class MediaqQuery extends StatelessWidget {
  const MediaqQuery({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(

      appBar: AppBar(
        title:Text("this is mq ") ,
      ),
      body: Center(
        child: Container(
          height:screenHeight,
          width: screenWidth ,
          decoration: BoxDecoration(
            color: Colors.blue,
          ),
          child: Center(
            child: Text(
              "Responsive Design",
              style: TextStyle(
                  fontSize: screenWidth * 0.08,
                  fontWeight:FontWeight.bold ),
            ),
          ),
        ),
      ),
    );
  }
}


class WrapExample extends StatelessWidget {
 final List<String> categories =[
   'Fruits','Vegetable',
   'Dairy',"Meet","Fish",
   "Bakery","snacks","Drinks",
   "Frozen"

 ];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("WrapExample"),
      ),
      body: Column(
        children: [
          Wrap(
            spacing: 10,
            runSpacing: 20,
            children: categories.map((category){
              return Chip(label:Text(category),
              backgroundColor:Colors.blue,
          );
          }).toList(),
          ),

              SizedBox(height: 10,),


             Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: GridView.count(
                  crossAxisCount: 3,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 20,
                  children: List.generate(1005, (index)=>
                      Container( child: Text("Iteam ${index}"),
                        color: Colors.blueAccent, ),
                  )
                ),
              ),
                         ),

        ],
      ),
    );
  }
}

class layoutBuilder extends StatelessWidget {
  const layoutBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Layout "),
       // backgroundColor: Colors.white,
      ),
      body: LayoutBuilder(builder: (context,pro){
        if(pro.maxWidth>600){
          return Center(
            child: Text("This is tablet Layout",style: TextStyle(
              color: Colors.blue,
            ),),
          );
        }else{
          return Center(
            child: Text("This is mobile layout",style: TextStyle(
              fontSize: 40,
              color: Colors.amber,
            ),),
          );
        }
      }),
    );
  }
}




