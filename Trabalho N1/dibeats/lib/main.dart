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
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.background,
      ),
      body:
      Padding(padding: const EdgeInsets.all(25.0), child: 
        Center(
          child: Column(
          
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    child:
                      Image.asset('assets/images/LBT.png'),
                  ),
                ]),
              const TextField(decoration: InputDecoration( filled: true, labelText: "Username",border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(50))) ),),
              const SizedBox(height: 15.0,),
              const TextField(decoration: InputDecoration( filled: true, labelText: "Password", border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(50))),),),
              const SizedBox(height: 15.0,),
              ElevatedButton(onPressed: () => setState(() {
                print("Ola");
              }), child: const Icon(Icons.autorenew)),
            ],
          ),
        ),
      ),
    );
  }
}
