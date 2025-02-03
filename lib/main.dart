import 'package:flutter/material.dart';
void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.red,
        appBarTheme: AppBarTheme(
          color: Colors.red,
          centerTitle: true,
        ),
        scaffoldBackgroundColor: Colors.grey,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.deepPurple,
            foregroundColor: Colors.white
          ),

        ),

      ),
      title: 'Ostaed Flutter app',
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController _numberControler = TextEditingController();
    TextEditingController _emailControler = TextEditingController();
    TextEditingController _passwordControler = TextEditingController();
    final _formKey = GlobalKey<FormState>();
    return Scaffold(
      appBar: AppBar(

        title: Text('Flutter App'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Form(
            key: _formKey,
              child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Email",
                    label:Text(" Email"),
                  ),
                  validator: (value){
                    if(value == null || value.isEmpty){
                      return "Empty email not allow";
                    }
                    return null;
                  },
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(

                    border: OutlineInputBorder(),
                    hintText: "Password",
                    label:Text(" Password"),
                  ),
                  validator: (value){
                    if(value == null || value.isEmpty || value.length<6){
                      return "pasword must be length 6";
                    }
                    return null;
                  },
                ),
              ),
              SizedBox(height: 20,),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: (){
                     if( _formKey.currentState!.validate()){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => UserInfo()));
                     }
                    },
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
                    child:Text("submit"),
                ),
              ),

            ],
          )),
          SizedBox(
            height: 300,
            child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                  crossAxisSpacing: 30,
                  mainAxisSpacing: 20,
                ),
                itemCount: 7,
                itemBuilder: (context,index){
                  return Container(
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(25),
                    ),

                    child: Column(
                      children: [
                        Center(
                          child: Icon(
                            Icons.mobile_friendly,size: 40,
                            color: Colors.white,
                          )
                        ),
                        Text(" Text $index"),
                      ],
                    )

                  );
                }
                ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(onPressed: (){
        print("this is floating action button");
      }, label: Text("add me")),
    );
  }
}

class UserInfo extends StatelessWidget {
  const UserInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text("Page 1"),
      ),
      body: Column(
        children: [
          ElevatedButton(
              onPressed: (){
                Navigator.pop(context);
              }, child: Text("Back")
          ),
          ElevatedButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => Page_1()));
              }, child: Text("Page")
          ),

        ],
      ),
    );
  }
}



class Page_1 extends StatelessWidget {
  const Page_1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text("Page "),
      ),
      body: Column(
        children: [
          ElevatedButton(
              onPressed: (){
                Navigator.pop(context);
              }, child: Text("Back")
          ),
        ],
      ),
    );
  }
}

