import 'package:dibeats/player_list_page.dart';
import 'package:dibeats/requests/requestType.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:provider/provider.dart';
import 'requests/request.dart';

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
      backgroundColor:const Color.fromARGB(255, 52, 53, 68),
      body: 
      Padding(padding: const EdgeInsets.only(top: 60, left: 30.0, right: 30.0), child:
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('Playlist of the Week', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30, color: Colors.white)),
                Text('Lorem Ipsum dolor', style: TextStyle(fontSize: 20, color: Colors.white),)
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
                        child: FloatingActionButton.extended(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(paddingValue)
                          ),
                          onPressed: () => setState(() {
                            Navigator.of(context).push(
                              MaterialPageRoute(builder: (context) => const PlayerListPage())
                              );
                          }), 
                          label: const Text("Playlist N° 1", style: TextStyle(fontSize: 30, color: Colors.black)),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: paddingValue),
                        child: SizedBox(
                        height: 400,
                        width: 300,
                        child: FloatingActionButton.extended(
                          shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(paddingValue)
                                ),
                          onPressed: () {},
                          label: const Text(""),),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: paddingValue),
                        child: SizedBox(
                        height: 400,
                        width: 300,
                        child: FloatingActionButton.extended(
                          shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(paddingValue)
                                ),
                          onPressed: () {},
                          label: const Text(""),),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: paddingValue),
                        child: SizedBox(
                        height: 400,
                        width: 300,
                        child: FloatingActionButton.extended(
                          shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(paddingValue)
                                ),
                          onPressed: () {},
                          label: const Text(""),),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: paddingValue),
                        child: SizedBox(
                        height: 400,
                        width: 300,
                        child: FloatingActionButton.extended(
                          shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(paddingValue)
                                ),
                          onPressed: () {},
                          label: const Text(""),),
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
                    Text("Feature Songs", style: TextStyle(fontSize: 20, color: Colors.white)),
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
                              FloatingActionButton.extended(
                                onPressed: () async {
                                  Provider.of<Requests>(context, listen: false).createPlaylist(
                                    PlaylistModel(song: 'Break', band: 'Three Days Grace')
                                  );
                                },
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(paddingValue)
                                ),
                                backgroundColor: const Color.fromARGB(255, 0, 255, 0),
                                label: const Text('Break', style: TextStyle(fontSize: 20, color: Colors.black)),
                              ),
                          ),
                        ),
                        SizedBox(
                          width: 150,
                          child:
                            Padding(padding: EdgeInsets.only(right: paddingValue), child:
                              FloatingActionButton.extended(
                                onPressed: () {},
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(paddingValue)
                                ),
                                backgroundColor: const Color.fromARGB(255, 0, 255, 0),
                                label: const Text('')
                              ),
                            ),
                        ),
                        SizedBox(
                          width: 150,
                          child: 
                            Padding(padding: EdgeInsets.only(right: paddingValue), child:
                              FloatingActionButton.extended(
                                onPressed: () {},
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(paddingValue)
                                ),
                                backgroundColor: const Color.fromARGB(255, 0, 255, 0),
                                label: const Text('')
                              ),
                          ),
                        ),
                        SizedBox(
                          width: 150,
                          child: 
                            Padding(padding: EdgeInsets.only(right: paddingValue), child:
                              FloatingActionButton.extended(
                                onPressed: () {},
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(paddingValue)
                                ),
                                backgroundColor: const Color.fromARGB(255, 0, 255, 0),
                                label: const Text('')
                              ),
                          ),
                        ),
                        SizedBox(
                          width: 150,
                          child: 
                            Padding(padding: EdgeInsets.only(right: paddingValue), child:
                              FloatingActionButton.extended(
                                onPressed: () {},
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(paddingValue)
                                ),
                                backgroundColor: const Color.fromARGB(255, 0, 255, 0),
                                label: const Text('')
                              ),
                          ),
                        ),
                        SizedBox(
                          width: 150,
                          child: 
                            Padding(padding: EdgeInsets.only(right: paddingValue), child:
                              FloatingActionButton.extended(
                                onPressed: () {},
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(paddingValue)
                                ),
                                backgroundColor: const Color.fromARGB(255, 0, 255, 0),
                                label: const Text('')
                              ),
                          ),
                        ),
                        SizedBox(
                          width: 150,
                          child: 
                            Padding(padding: EdgeInsets.only(right: paddingValue), child:
                              FloatingActionButton.extended(
                                onPressed: () {},
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(paddingValue)
                                ),
                                backgroundColor: const Color.fromARGB(255, 0, 255, 0),
                                label: const Text('')
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
                child: 
                FloatingActionButton.extended(onPressed: () {},
                  backgroundColor: Colors.white, 
                  label: const Text('Playlist', style: TextStyle(fontSize: 20, color: Colors.black)
                    )
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}