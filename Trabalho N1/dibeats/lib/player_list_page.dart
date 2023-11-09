import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

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
    final List<String> data = ['Break','American Idiot','Wake Me Up','Faint','Numb','Lost'];

    return Scaffold(
      backgroundColor:const Color.fromARGB(255, 52, 53, 68),
      body:
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            width: 500,
            height: 450,
            child: Container(
            color: Colors.green,
            child: const Text("Insira aqui a música atual"),
          ),
          ),
          Padding(padding:const EdgeInsets.only(top: 30, left: 25.0, right: 25.0), child:
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const Text("Song list", style: TextStyle(fontSize: 25, color: Colors.white),),
                SizedBox(
                  width: 500,
                  height: 400,
                  child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: data.length,
                    itemBuilder: (context, index) {
                      final item = data[index];
                      return ListTile(
                        title: Text(item, style: const TextStyle(fontSize: 25, color: Colors.white),),
                      );
                    },
                  ),
                )
          ],)
        )
      ]) 
    );
  }
}