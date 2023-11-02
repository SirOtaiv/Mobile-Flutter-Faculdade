import "package:cloud_firestore/cloud_firestore.dart";

class PlaylistModel {
  String id; 
  final String song;
  final String band;

  PlaylistModel({
    this.id = '',
    required this.song,
    required this.band,
  });

  Map<String, dynamic> toJson() => {
    'id': id,
    'song': song,
    'band': band
  };

}