import 'package:flutter/material.dart';
import 'welcome_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Demo",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Form(),
    );
  }
}

class Form extends StatefulWidget {
  const Form({ Key? key }) : super(key: key);

  @override
  _FormState createState() => _FormState();
}

class _FormState extends State<Form> {
  TextEditingController _imac = TextEditingController();
  TextEditingController _macbook = TextEditingController();
  TextEditingController _ipad = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PHU STORE'),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
              Padding(
              
              padding: const EdgeInsets.all(8.0),
              
              child: Column(
                children: [
                   Image.asset(
                  "assets/images/imac.jpg",
                  height: 180,
                  
                  ),
                ]
              ),
              ),
            Padding(
              
              padding: const EdgeInsets.all(8.0),
              
              child: TextField(
                controller: _imac,
                decoration: InputDecoration(
                  border: OutlineInputBorder(), labelText: 'Enter  price'),
                  autofocus: true,
                  keyboardType: TextInputType.number,
                ),
              ),
              Padding(
              
              padding: const EdgeInsets.all(8.0),
              
              child: Column(
                children: [
                   Image.asset(
                  "assets/images/macbook.jpg",
                  height: 180,
                  
                  ),
                ]
              ),
              ),
            
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: _macbook,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Enter  price'),
                    keyboardType: TextInputType.number,
                  ),
                ),
                Padding(
              
              padding: const EdgeInsets.all(8.0),
              
              child: Column(
                children: [
                   Image.asset(
                  "assets/images/ipad.jpg",
                  height: 180,
                  
                  ),
                ]
              ),
              ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                  controller: _ipad,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Enter  price'),
                    keyboardType: TextInputType.number,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => WelcomePage(
                          imac: _imac.text,
                          macbook: _macbook.text,
                          ipad: _ipad.text,
                        ),
                      ),
                    );
                  },
                  child: Text('Go Next Page'))
                ],
               ),
              ),
            );
          }
        }