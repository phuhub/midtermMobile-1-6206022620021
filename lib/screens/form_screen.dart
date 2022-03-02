import 'dart:html';

import 'package:flutter/material.dart';

class FormScreen extends StatelessWidget{
  const FormScreen ({Key? key}) : super(key: key);
  
  @override 
  Widget build (BuildContext context) { 
    return Scaffold(
      appBar : AppBar(
        title:Text('Home Screen'),
        actions: [
          GestureDetector(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Icon(
                Icons.add,
                size: 40,
                ),
                ),
            onTap: (){
              Navigator.push(context,
              MaterialPageRoute(builder:(context){
                return FormScreen();
              }),
              );
            },
          ),
        ],
      ),
      body: GestureDetector(
        onDoubleTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context){
              return FormScreen();
            }),
          );
        },
        child: Center(
          child: Text(
            'Touch Screen second Time',
            style: TextStyle(fontSize: 30),
        ),
        ),
      ),
    );
  }
}