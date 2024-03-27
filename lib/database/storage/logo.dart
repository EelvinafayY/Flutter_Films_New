import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:image_picker/image_picker.dart';

class ImageLogoStorage 
{
  final FirebaseStorage _fireBaseStorage = FirebaseStorage.instance;
  String ? imageUrl;

  Future<void> addLogoImage(XFile path) async {
    try {
      final pathImage = 'userLogo/${path.name}';
      Reference storageReference = _fireBaseStorage.ref().child(pathImage);
      UploadTask uploadTask = storageReference.putFile(File(path.path));
      TaskSnapshot taskSnapshot = await uploadTask.whenComplete(() => null);

      imageUrl = await taskSnapshot.ref.getDownloadURL();

      print("Путь к картинке:::::::::" + imageUrl!);
    } catch (e) {
      return;
    }
  }

}