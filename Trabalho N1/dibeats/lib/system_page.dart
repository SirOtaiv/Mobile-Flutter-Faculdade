import 'package:dibeats/player_list_page.dart';
import 'package:flutter/material.dart';

class SystemPage extends StatefulWidget {
  const SystemPage({super.key});

  @override
  State<SystemPage> createState() => _SystemPageState();
}

class _SystemPageState extends State<SystemPage> {
  @override
  Widget build(BuildContext context) {
    double paddingValue = 25.0;
    return Scaffold(
      body: 
      Padding(padding: const EdgeInsets.only(top: 60, left: 30.0, right: 30.0), child:
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('Playlist of the Week',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),),
                Text('Lorem Ipsum dolor',)
              ],
            ),
            const SizedBox(
              height: 35,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 420,
                  child:
                  ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(right: paddingValue),
                        child: SizedBox(
                        height: 400,
                        width: 300,
                        child: FloatingActionButton(onPressed: () {}, child: const Text(""),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: paddingValue),
                        child: SizedBox(
                        height: 400,
                        width: 300,
                        child: FloatingActionButton(onPressed: () {}, child: const Text(""),),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: paddingValue),
                        child: SizedBox(
                        height: 400,
                        width: 300,
                        child: FloatingActionButton(onPressed: () {}, child: const Text(""),),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: paddingValue),
                        child: SizedBox(
                        height: 400,
                        width: 300,
                        child: FloatingActionButton(onPressed: () {}, child: const Text(""),),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: paddingValue),
                        child: SizedBox(
                        height: 400,
                        width: 300,
                        child: FloatingActionButton(onPressed: () {}, child: const Text(""),),
                        ),
                      ),
                    ]
                  ),
                ),
                const SizedBox(
                  height: 35,
                ),
                const Column(
                  children: <Widget>[
                    Text("Feature Artist"),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                SizedBox(
                  height: 130,
                  child:
                    ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[

                        SizedBox(
                          width: 150,
                          child: 
                            Padding(padding: EdgeInsets.only(right: paddingValue), child:
                              FloatingActionButton(
                                onPressed: () {},
                                backgroundColor: const Color.fromARGB(255, 0, 255, 0),
                              ),
                          ),
                        ),
                        SizedBox(
                          width: 150,
                          child:
                            Padding(padding: EdgeInsets.only(right: paddingValue), child:
                              FloatingActionButton(
                                onPressed: () {},
                                backgroundColor: const Color.fromARGB(255, 0, 255, 0),
                              ),
                            ),
                        ),
                        SizedBox(
                          width: 150,
                          child: 
                            Padding(padding: EdgeInsets.only(right: paddingValue), child:
                              FloatingActionButton(
                                onPressed: () {},
                                backgroundColor: const Color.fromARGB(255, 0, 255, 0),
                              ),
                          ),
                        ),
                        SizedBox(
                          width: 150,
                          child: 
                            Padding(padding: EdgeInsets.only(right: paddingValue), child:
                              FloatingActionButton(
                                onPressed: () {},
                                backgroundColor: const Color.fromARGB(255, 0, 255, 0),
                              ),
                          ),
                        ),
                        SizedBox(
                          width: 150,
                          child: 
                            Padding(padding: EdgeInsets.only(right: paddingValue), child:
                              FloatingActionButton(
                                onPressed: () {},
                                backgroundColor: const Color.fromARGB(255, 0, 255, 0),
                              ),
                          ),
                        ),
                        SizedBox(
                          width: 150,
                          child: 
                            Padding(padding: EdgeInsets.only(right: paddingValue), child:
                              FloatingActionButton(
                                onPressed: () {},
                                backgroundColor: const Color.fromARGB(255, 0, 255, 0),
                              ),
                          ),
                        ),
                        SizedBox(
                          width: 150,
                          child: 
                            Padding(padding: EdgeInsets.only(right: paddingValue), child:
                              FloatingActionButton(
                                onPressed: () {},
                                backgroundColor: const Color.fromARGB(255, 0, 255, 0),
                              ),
                          ),
                        ),
                      ],
                    ),
                ),
              ],
            ),
            Padding(padding: EdgeInsets.only(top: paddingValue),
              child: SizedBox(
                width: 500,
                child: ElevatedButton(onPressed: () => setState(() {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const PlayerListPage())
                  );
                }), child: const Text('Playlist', style: TextStyle(fontSize: 20, color: Colors.black),)),
              ),
            )
          ],
        ),
      ),
    );
  }
}