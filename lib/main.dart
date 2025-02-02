import 'package:flutter/material.dart';
void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Flutter App'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20,top: 20),
              child: TextField(
                controller: _numberControler,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  filled: false,
                  fillColor: Colors.amber,
                  hintText: "Enter your number",
                  hintStyle: TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                  ),
                  labelText: "Number",
                  labelStyle:  TextStyle(
                    fontSize: 25,
                    color: Colors.blue,
                  ),
                  hintMaxLines: 3,
                  helperText: "Please Enter Your Number",
                  helperStyle: TextStyle(fontSize: 18,color: Colors.green),
                  helperMaxLines: 1,
                  // prefixText: "Email:",
                  //suffixText: "@gmail.com",
        
        
        
                  prefixIcon: Icon(Icons.phone),
                  suffixIcon: Icon(Icons.send),
        
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.amber,width: 5),
                    borderRadius: BorderRadius.only(
        
                        topLeft:Radius.circular(20),
                        bottomRight: Radius.circular(20)),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green,width: 5),
                    borderRadius: BorderRadius.only(
        
                        topLeft:Radius.circular(20),
                        bottomRight: Radius.circular(20)),
                  ),
                ),
              ),
            ),
         Padding(
           padding: const EdgeInsets.only(left: 20,right: 20,top: 20),
           child: TextField(
             controller: _emailControler,
             decoration: InputDecoration(
               filled: false,
               fillColor: Colors.amber,
               hintText: "Enter your mail",
               hintStyle: TextStyle(
                 fontSize: 25,
                 color: Colors.black,
               ),
               labelText: "Email",
                labelStyle:  TextStyle(
                  fontSize: 25,
                  color: Colors.blue,
                ),
                hintMaxLines: 3,
               helperText: "Please Enter Your email",
               helperStyle: TextStyle(fontSize: 18,color: Colors.green),
               helperMaxLines: 1,
              // prefixText: "Email:",
               //suffixText: "@gmail.com",
        
        
        
               prefixIcon: Icon(Icons.email),
               suffixIcon: Icon(Icons.send),
        
               border: OutlineInputBorder(
                 borderSide: BorderSide(color: Colors.amber,width: 5),
                 borderRadius: BorderRadius.only(
        
                     topLeft:Radius.circular(20),
                     bottomRight: Radius.circular(20)),
               ),
               enabledBorder: OutlineInputBorder(
                 borderSide: BorderSide(color: Colors.amber,width: 5),
                 borderRadius: BorderRadius.only(
        
                     topLeft:Radius.circular(20),
                     bottomRight: Radius.circular(20)),
               ),
             ),
           ),
         ),
        
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20,top: 20),
              child: TextField(
                controller: _passwordControler,
                obscureText: true,
                decoration: InputDecoration(
                  filled: false,
                  fillColor: Colors.amber,
                  hintText: "Enter your Password",
                  hintStyle: TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                  ),
                  labelText: "Password",
                  labelStyle:  TextStyle(
                    fontSize: 25,
                    color: Colors.blue,
                  ),
                  hintMaxLines: 3,
                  helperText: "Please Enter Your Password",
                  helperStyle: TextStyle(fontSize: 18,color: Colors.green),
                  helperMaxLines: 1,
                  // prefixText: "Email:",
                  //suffixText: "@gmail.com",
        
        
        
                  prefixIcon: Icon(Icons.email),
                  suffixIcon: Icon(Icons.send),
        
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.amber,width: 5),
                    borderRadius: BorderRadius.only(
        
                        topLeft:Radius.circular(20),
                        bottomRight: Radius.circular(20)),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green,width: 5),
                    borderRadius: BorderRadius.only(
        
                        topLeft:Radius.circular(20),
                        bottomRight: Radius.circular(20)),
                  ),
                ),
              ),
            ),
        
            ElevatedButton(onPressed: (){
              print(_numberControler.text);
              print('${_emailControler.text}gmail.com');
              print(_passwordControler.text);
            }, child: Text("Submit")
            ),
            ElevatedButton(onPressed: (){
              _numberControler.clear();
              _emailControler.clear();
              _passwordControler.clear();
        
            },
                child: Text("Clear")),
            Text('Astagfirullah ',
              style: TextStyle(fontSize: 25,color: Colors.blue),

            ),
            Divider(color: Colors.orange,),
            Text('Alhamdulliah ',style: TextStyle(fontSize: 25,color: Colors.deepPurple)),
            ListTile(
              title:Text('Software Enginner') ,
              subtitle: Text("Flutter devoloper"),
              leading: Icon(Icons.account_circle,size: 50,),
              trailing: Icon(Icons.send),
              onTap: (){
                print('this is list title');
              },
              onLongPress: (){
                print('also list title');
              },
        
            ),

            SizedBox(

              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
                child: Text("Click me"),
              ),
            ),
          SizedBox(
            height: 250,
            width: 250,
            child:   ListView.builder(
                itemCount: 15,
                itemBuilder: (BuildContext, index){
                  return ListTile(
                    title:Text('Shad islam ${index+1}') ,
                    subtitle: Text("Flutter devoloper"),
                    leading: Icon(Icons.account_circle,size: 50,),
                    trailing: Icon(Icons.send),
                    onTap: (){
                      print('this is list title');
                    },
                    onLongPress: (){
                      print('also list title');
                    },
        
                  );
        
                }
            ),
          ),


          ],
        ),
      ),
    );
  }
}



