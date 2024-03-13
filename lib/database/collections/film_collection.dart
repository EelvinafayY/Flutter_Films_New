import 'dart:ffi';

import 'package:cloud_firestore/cloud_firestore.dart';


class FilmCollection{
    final FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;
    Future<void> addFilmCollection(
      String name,
      Double raiting,
      String description,
      Int year,
      String genre,
      String duration,
      String poster_image,
      String url
    ) 
      async {
        try {
            await _firebaseFirestore.collection('films').add({

              'name': name,
              'raiting': raiting,
              'description': description,
              'year': year,
              'genre': genre,
              'duration': duration,
              'poster_image': poster_image,
              'url': url
            });
        } catch (e) {
          return;
        }
    }


    Future<void> editUserCollection(
      String name,
      Double raiting,
      String description,
      Int year,
      String genre,
      String duration,
      String poster_image,
      String url,
      dynamic docs
    ) async {
        try {
            await _firebaseFirestore.collection('films').doc(docs.id).update({
            'name': name,
            'raiting': raiting,
            'description': description,
            'year': year,
            'genre': genre,
            'duration': duration,
            'poster_image': poster_image,
            'url': url
            });
        } catch (e) {
          return;
        }
    }



    Future<void> deleteUserCollection(
      dynamic docs
    ) async {
      try {
        await _firebaseFirestore.collection('films').doc(docs.id).delete();
      } catch (e) {
        return;
      }
    }
}