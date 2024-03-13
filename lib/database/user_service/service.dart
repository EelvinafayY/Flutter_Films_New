

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_films/database/user_service/model.dart';

class AuthService{
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  Future <UserModel?> singIn(BuildContext context, String email, String password)async{
    try {
      showDialog(context: context, builder: (context){
                          return Center(child: CircularProgressIndicator());
                        }); 
      UserCredential userCredential = await _firebaseAuth.signInWithEmailAndPassword(email: email, password: password);
      User user = userCredential.user!;
      Navigator.pop(context);
      return UserModel.fromFirebase(user);
      
    } catch (e) {
      Navigator.pop(context);
      return null;
    }
  }

  Future <UserModel?> singUp(BuildContext context,String email, String password)async{
    try {
      showDialog(context: context, builder: (context){
                          return Center(child: CircularProgressIndicator());
                        });
      UserCredential userCredential = await _firebaseAuth.createUserWithEmailAndPassword(email: email, password: password);
      User user = userCredential.user!;
      Navigator.pop(context);
      return UserModel.fromFirebase(user);
    } catch (e) {
      Navigator.pop(context);
      return null;
    }
  }


  Future logOut()async{
    try {
      await _firebaseAuth.signOut();
    } catch (e) {
      return null;
    }
  }


  Stream<UserModel?> get currentUser{
    return _firebaseAuth.authStateChanges().map((user) => user!=null? UserModel.fromFirebase(user) : null);
  }
}