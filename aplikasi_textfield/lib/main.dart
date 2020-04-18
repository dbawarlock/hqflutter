//kita mau ambil nilai di text pake controller

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
 //but controller
 TextEditingController controller = TextEditingController();
 //dikosongkan

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home : Scaffold(
        appBar: AppBar(
          title: Text ("Latihan textfield"),
          ),
      body: 
      //container mbungkus column
      Container(
        margin : EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            TextField(
            decoration :
            InputDecoration(
              // kalau pakai prefix ..prefixText jangan dipakai
              // kalau pake suffix ..suffixText jngan dipakai
              fillColor: Colors.lightBlue,
              filled : true,
              icon : Icon(Icons.adb),
              suffix: Container(width: 5 ,height: 5,color: Colors.amber),

              prefixIcon: Icon(Icons.person),
              ///prefixText: "Name: ",
              //prefixStyle: TextStyle(color: Colors.blue),
              labelText: "Nama Lengkap: ",
              labelStyle: TextStyle(color: Colors.red),
              hintText: "Nama Lengkap disini brooo ",
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(20))
            ),
            maxLength : 5,
            //obscureText : true buat password
            onChanged: (value) {
              setState((){});
              },
            controller: controller,
           ),Text(controller.text)], 
        ),
      ),   
      ),
    );
  }
}
