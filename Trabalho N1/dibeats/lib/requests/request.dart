import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'requestType.dart';

class Requests extends ChangeNotifier {
  final FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;
  CollectionReference _playlistCollection = FirebaseFirestore.instance.collection('playlist');

  Future createPlaylist(PlaylistModel playlistSong) async {
    final db = _playlistCollection.doc();
    playlistSong.id = db.id;
    await db.set(playlistSong.toJson());
  }

  Future removePlaylistSong(String songId) async {
    try {
      await _playlistCollection.doc(songId).delete();
    } catch (error) {
      print('Erro ao excluir musica da playlist $error');
    }
  }

  Future updatePlaylist(String oldSongId, PlaylistModel playlistSong) async {
    final db = _playlistCollection.doc(oldSongId);
    playlistSong.id = db.id;
    await db.set(playlistSong.toJson());
  }

  
  Future<List<PlaylistModel>> getPlaylist() async {
    try {
      QuerySnapshot getResponse = await _playlistCollection.get();
      List<PlaylistModel> userPlaylist = getResponse.docs.map((songs) {
        return PlaylistModel(
          id: songs.id,
          song: songs['song'], 
          band: songs['band'],);
      }).toList();
      return userPlaylist;
    } catch (error) {
      print('Não foi possivel recuperar a playlist $error');
      return [];
    }
  }

}