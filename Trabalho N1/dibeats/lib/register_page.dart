import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {

  bool _passVisible = true;
  bool _passVisibleSec = true;

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
              const Center(
                child: TextField(
                  decoration: InputDecoration(
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
                            onTap: () {},
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