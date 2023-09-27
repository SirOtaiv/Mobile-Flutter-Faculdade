import 'dart:io';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DiBeats',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 52, 53, 68),
          background: const Color.fromARGB(255, 52, 53, 68),
          ),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: "",),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.background,
      ),
      body:
      Padding(padding: const EdgeInsets.only(left: 25.0, right: 25.0), child: 
        Center(
          child: Column(
          
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Center(
                child:
                SizedBox(
                  height: 260,
                  child:
                    Image.asset('assets/images/LBT.png'),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  const TextField(decoration: InputDecoration( filled: true, labelText: "Username",border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(35))) ),),
                  const SizedBox(height: 15.0,),
                  const TextField(decoration: InputDecoration( filled: true, labelText: "Password", border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(35))),),),
                  const SizedBox(height: 15.0,),
                  SizedBox(
                    width: 200,
                    child:
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          ElevatedButton(onPressed: () => setState(() {
                            
                          }), child: const Text('LOGIN', style: TextStyle(fontSize: 20),)),
                        ],
                      )
                  )
                ]
              )
            ],
          ),
        ),
      ),
    );
  }
}
