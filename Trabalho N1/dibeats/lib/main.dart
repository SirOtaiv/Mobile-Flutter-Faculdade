import 'package:dibeats/requests/request.dart';
import 'package:dibeats/system_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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
          seedColor: Colors.black,
          background: const Color.fromARGB(255, 52, 53, 68),
          ),
        textTheme: const TextTheme(
          bodyMedium: TextStyle(
            fontSize: 20,
            color: Color.fromARGB(255, 255, 255, 255),
          ),
        ),
        useMaterial3: true,
      ),
      home: ChangeNotifierProvider(
        create: (context) => Requests(),
        child: MaterialApp(
          home: Builder(
            builder: (context) {
              return const MyHomePage();
            },
          ),
        ),
      )
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:const Color.fromARGB(255, 52, 53, 68),
      body:
      Padding(padding: const EdgeInsets.only(left: 25.0, right: 25.0), child: 
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Center(
                child:
                SizedBox(
                  height: 150,
                  child:
                    Image.asset('assets/images/LBT.png'),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  const TextField(decoration: InputDecoration(filled: true, fillColor: Colors.white, labelText: "Username", border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20))), ),),
                  const SizedBox(height: 15.0,),
                  const TextField(decoration: InputDecoration(filled: true, fillColor: Colors.white, labelText: "Password", border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20))),),),
                  const SizedBox(height: 15.0,),
                  SizedBox(
                    width: 400,
                    child:
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          FloatingActionButton.extended(onPressed: () => setState(() {
                            Navigator.of(context).push(
                              MaterialPageRoute(builder: (context) => const SystemPage())
                            );
                          }),
                          backgroundColor: Colors.black,
                          label: const Text('Login', style: TextStyle(fontSize: 20, color: Colors.green),)),
                        ],
                      )
                  )
                ]
              )
            ],
          ),
        ]),
      ),
    );
  }
}
