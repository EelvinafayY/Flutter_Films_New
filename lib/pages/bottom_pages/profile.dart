// ignore_for_file: use_build_context_synchronously

import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_films/database/collections/users_collection.dart';
import 'package:flutter_films/database/storage/logo.dart';
import 'package:image_picker/image_picker.dart';
import 'package:toast/toast.dart';

final colRef = FirebaseFirestore.instance.collection('users');

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final String userId = FirebaseAuth.instance.currentUser!.uid.toString();
  File? _selectFile;
  XFile? _filename;
  dynamic userDoc;
  UserCollection usersColection = UserCollection();
  ImageLogoStorage imageLogoStorage = ImageLogoStorage();

  selectImageGallery() async {
    final returnImage =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    setState(
      () {
        _selectFile = File(returnImage!.name);
        _filename = returnImage;
      },
    );
  }

  //Метод загрузки документа пользователя
  getByUserId() async {
    DocumentSnapshot documentSnapshot = await colRef.doc(userId).get();
    setState(
      () {
        userDoc = documentSnapshot;
      },
    );
  }

  pushStotage() async {
    await imageLogoStorage.addLogoImage(_filename!);
  }

  @override
  void initState() {
    getByUserId();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.2,
              width: MediaQuery.of(context).size.width * 0.3,
              child: userDoc['image'] == ""
                  ? CircleAvatar(
                      backgroundColor: const Color.fromARGB(255, 74, 72, 88),
                      child: IconButton(
                        style: const ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(Colors.transparent),
                        ),
                        icon: const Icon(Icons.add),
                        onPressed: () async {
                          selectImageGallery();
                          if (_selectFile != null) {
                            showDialog(
                              context: context,
                              builder: (context) => const Center(
                                child: CircularProgressIndicator(),
                              ),
                            );
                            pushStotage();
                            Future.delayed(
                              const Duration(seconds: 4),
                            );
                            await usersColection.editUserCollection(
                              userId,
                              userDoc['name'],
                              imageLogoStorage.imageUrl!,
                            );
                            Navigator.pop(context);
                            Toast.show('Успешно');
                          } else {
                            Toast.show('Выберите изображение!');
                          }
                        },
                      ),
                    )
                  : CircleAvatar(
                      backgroundImage: NetworkImage(userDoc['image']),
                    ),
            ),
            Text (
"ФИО: ${userDoc['name']}",
style: const TextStyle(color: Colors.white),
),
Text (
"Email: ${userDoc['email']}",
style: const TextStyle(color: Colors.white),
),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.5,
              alignment: Alignment.centerRight,
              child: ElevatedButton(
                onPressed: () {},
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Редактировать ',
                    ),
                    Icon(
                      Icons.edit,
                      color: Colors.blue,
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.5,
              alignment: Alignment.bottomCenter,
              child: ElevatedButton(
                onPressed: () {},
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Выйти '),
                    Icon(
                      Icons.logout,
                      color: Colors.red,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}