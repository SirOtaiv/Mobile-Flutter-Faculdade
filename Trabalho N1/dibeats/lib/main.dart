import 'package:dibeats/requests/request.dart';
import 'package:dibeats/system_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class ErrorStatus {
  String code;
  String message;

  ErrorStatus({required this.code, required this.message});
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

  final FirebaseAuth _auth = FirebaseAuth.instance;

  final TextEditingController _loginInput = TextEditingController();
  final TextEditingController _passwordInput = TextEditingController();

  Future<void> _normalLogin() async {
    String email = _loginInput.text.trim();
    String password = _passwordInput.text;

    try{
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
        email: email, 
        password: password
      );

      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const SystemPage())
      );
    } on FirebaseAuthException catch(e) {

      ErrorStatus errorStatus;
      
      if(e.code == 'user-not-found') {
        errorStatus = ErrorStatus(code: e.code, message: 'User not found or doesnt exist');
      } else if(e.code == 'wrong-password') {
        errorStatus = ErrorStatus(code: e.code, message: 'Wrong password, plese verify');
      } else {
        errorStatus = ErrorStatus(code: e.code, message: e.message!);
      }

      showDialog(context: context, 
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Failed to login'),
          content: Text('Code: ${errorStatus.code}\nMessage: ${errorStatus.message}'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Fechar'),
            ),
          ],
        );
      });
    }

  }

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
                  TextField(
                    controller: _loginInput,
                    decoration:const InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      labelText: "Username", 
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(20)
                          )
                        ),
                       ),
                      ),
                  const SizedBox(height: 15.0,),
                  TextField(
                    controller: _passwordInput,
                    decoration:const InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      labelText: "Password", 
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(20)
                          )
                        ),
                      ),
                    ),
                  const SizedBox(height: 15.0,),
                  SizedBox(
                    width: 400,
                    child:
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          FloatingActionButton.extended(onPressed: () async => _normalLogin(),
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
