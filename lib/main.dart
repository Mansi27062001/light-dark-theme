import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

//function set the theme  light
final _lightTheme=ThemeData(
  brightness:Brightness.light,
);

//function set the theme dark
final _darkTheme=ThemeData(
  brightness:Brightness.dark,
);

void main(){
  runApp(MyApp());
}

class MyApp extends StatefulWidget{
  @override
  _MyAppState createState()=>_MyAppState();
}

//contains the body of the app
class _MyAppState extends State<MyApp>{
  bool _switchValue=true;
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      theme:_switchValue ?_lightTheme :_darkTheme,
      home:Scaffold(
            appBar: AppBar(
             backgroundColor: _switchValue?Colors.grey:Colors.white,
             elevation:0,
             brightness:_switchValue ?Brightness.light:Brightness.dark,
             leading:IconButton(
               onPressed:(){
                 setState((){
                   _switchValue=!_switchValue;
                 });
               },
               icon:_switchValue
                   ?Icon(
                 Icons.brightness_3,
                 color:_switchValue?Colors.teal[50]:Colors.grey[850],
               )
                   :Icon(
                 Icons.wb_sunny,
                 color:_switchValue?Colors.greenAccent:Colors.orange,
               )
             ),
            ),
      )

    );


  }
}