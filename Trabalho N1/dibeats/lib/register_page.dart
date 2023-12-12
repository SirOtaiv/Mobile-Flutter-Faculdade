import 'package:dibeats/main.dart';
import 'package:dibeats/system_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {

  bool _passVisible = true;
  bool _passVisibleSec = true;

  final FirebaseAuth _auth = FirebaseAuth.instance;

  final TextEditingController _emailInput = TextEditingController();
  final TextEditingController _passwordFirInput = TextEditingController();
  final TextEditingController _passwordSecInput = TextEditingController();

  Future<void> registerProcess() async {
    String emailReg = _emailInput.text.trim();
    String passFir = _passwordFirInput.text;
    String passSec = _passwordSecInput.text;
    ErrorStatus errorStatus = ErrorStatus(code: 'any', message: '');

    if (passFir == passSec) {
      try {
        UserCredential registerCredential = await _auth.createUserWithEmailAndPassword(email: emailReg, password: passFir);

        // ignore: use_build_context_synchronously
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const SystemPage())
        );  
      } on FirebaseAuthException catch(e) {
        if (e.code == 'email-already-in-use'){
          errorStatus.message = 'Email já em uso, por favor faça login';
        }
      }

    } else {
      errorStatus = ErrorStatus(code: 'any', message: 'As senhas não são iguais, por favor revise');
    }

    // ignore: use_build_context_synchronously
    showDialog(context: context, 
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Failed to register'),
          content: Text(errorStatus.message),
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:const Color.fromARGB(255, 52, 53, 68),
      body: Padding(
        padding: const EdgeInsets.only(left: 25, right: 25),
        child: 
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Center(
                child:
                SizedBox(
                  height: 150,
                  child:
                    Image.asset('assets/images/LBT.png'),
                ),
              ),
              const Center(
                child: Text("Crie sua conta", style: TextStyle(fontSize: 35, color: Colors.white),),
              ),
              const SizedBox(
                height: 35,
              ),
              Center(
                child: TextField(
                  controller: _emailInput,
                  decoration: const InputDecoration(
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20))
                    ),
                    labelText: 'Seu melhor email',
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Center(
                child: TextField(
                  controller: _passwordFirInput,
                  obscureText: _passVisible,
                  decoration: InputDecoration(
                    filled: true,
                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20))
                    ),
                    labelText: 'Senha',
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          _passVisible = !_passVisible;
                        });
                      }, 
                      icon: Icon(
                        _passVisible ? Icons.visibility : Icons.visibility_off
                      )
                    )
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Center(
                child: TextField(
                  controller: _passwordSecInput,
                  obscureText: _passVisibleSec,
                  decoration: InputDecoration(
                    filled: true,
                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20))
                    ),
                    labelText: 'Insira sua senha novamente',
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          _passVisibleSec = !_passVisibleSec;
                        });
                      }, 
                      icon: Icon(
                        _passVisible ? Icons.visibility : Icons.visibility_off
                      )
                    )
                  ),
                ),
              ),
              const SizedBox(
                height: 100,
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Center(
                      child: 
                        SizedBox(
                          height: 50,
                          width: 160,
                          child: InkWell(
                            onTap: () {
                              Navigator.of(context).pop();
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.red[800],
                                borderRadius: BorderRadius.circular(15)
                                ),
                                child: const Center(child: Text("Cancelar", style: TextStyle(fontSize: 25, color: Colors.white),)),
                            ),
                          ),
                        )
                    ),
                    Center(
                      child: 
                        SizedBox(
                          height: 50,
                          width: 160,
                          child: InkWell(
                            onTap: () async => registerProcess(),
                            child: Container(
                              decoration: BoxDecoration(
                                gradient: const LinearGradient(
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                  colors: [Colors.greenAccent, Colors.lightGreen]),
                                borderRadius: BorderRadius.circular(15)
                                ),
                                child: const Center(child: Text("Cadastrar", style: TextStyle(fontSize: 25, color: Colors.black87),)),
                            ),
                          ),
                        )
                    ),
                  ]
                )
              ),
          ]),
      )
    );
  }
}