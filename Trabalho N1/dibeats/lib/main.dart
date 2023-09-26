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
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
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
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.background,
      ),
      body:
      Padding(padding: const EdgeInsets.all(25.0), child: 
        Center(
          child: Column(
          
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
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
