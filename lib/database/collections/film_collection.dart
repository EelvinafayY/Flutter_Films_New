import 'package:cloud_firestore/cloud_firestore.dart';

class FilmsCollection {
  final FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;

  Future<void> addFilmCollection( String url, String name,
      String description, String image, String rating, String genre) async {
    try {
      await _firebaseFirestore.collection('films').add({
        'name': name,
        'description': description,
        'image': image,
        'rating': rating,
        'url': url,
        'genre': genre,
      });
    } catch (e) {
      return;
    }
  }

  Future<void> editFilmCollection(String url, String name,
      String description, String image, String rating, String genre, dynamic docs) async {
    try {
      await _firebaseFirestore.collection('films').doc(docs.id).update({
        'name': name,
        'description': description,
        'image': image,
        'rating': rating,
        'url': url,
        'genre': genre,
      });
    } catch (e) {
      return;
    }
  }

  Future<void> deleteFilmCollection(dynamic docs) async {
    try {
      await _firebaseFirestore.collection('films').doc(docs.id).delete();
    } catch (e) {
      return;
    }
  }
}