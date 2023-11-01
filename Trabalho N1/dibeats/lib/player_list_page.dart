import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
// import 'package:firebase_core/firebase_core.dart';

class PlayerListPage extends StatefulWidget {
  const PlayerListPage({super.key});

  @override
  State<PlayerListPage> createState() => _PlayerListPageState();
}

class _PlayerListPageState extends State<PlayerListPage> {
  @override
  Widget build(BuildContext context) {
    // void async getPlaylist(){
    //   await FirebaseFirestore.instance.collection('playlist').doc('playlistID').get()
    // }
    // double paddingValue = 25.0;
    return Scaffold(
      body:
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            width: 500,
            height: 450,
            child: Container(
            color: Colors.green,
            child: const Text(""),
          ),
          ),
          Padding(padding:const EdgeInsets.only(top: 30, left: 25.0, right: 25.0), child:
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const Text("Song list", style: TextStyle(fontSize: 25),),
                Container(
                  width: 500,
                  height: 400,
                  // color: Colors.amber,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: const <Widget>[
                      
                    ]
                  ),
                )
          ],)
        )
      ]) 
    );
  }
}