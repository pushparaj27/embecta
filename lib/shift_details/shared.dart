import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shared_preferences/shared_preferences.dart';
void main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Learning',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState()
  {
    return _MyHomePageState();
  }
}

class _MyHomePageState extends State<MyHomePage> {
  late SharedPreferences prefs;
  TextEditingController controller = new TextEditingController();
  String name="";
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body:Container(
            margin: EdgeInsets.all(20),
          child: Column(
            children: [
              TextField(
                controller: controller,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(
                height:30,
              ),
              Text(name, style: TextStyle(fontSize: 20),),
              SizedBox(
                height:30,
              ),
              ElevatedButton(
                child:Text("Save"),
                onPressed: ()
                {
                  save();
                },
              ),
              ElevatedButton(
                child:Text("retrieve"),
                onPressed: ()
                {
                  retrieve();
                },
              ),
              ElevatedButton(
                child:Text("Delete"),
                onPressed: ()
                {
                  delete();
                },
              )
            ],
          )
        ),
    );
  }

  save() async
  {
    prefs = await SharedPreferences.getInstance();
    prefs.setString("username", controller.text.toString());
  }

  retrieve() async{
    prefs = await SharedPreferences.getInstance();
    name = prefs.getString("username")!;
    setState(() {

    });
  }

  delete() async
  {
    prefs = await SharedPreferences.getInstance();
    prefs.remove("username");
    name = "";
    setState(() {

    });
  }
}