import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_films/database/user_service/service.dart';
import 'package:flutter_films/routes/routes.dart';
import 'package:flutter_films/themes/dark.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: 'AIzaSyDa9meV0ofxvyfJ3KQF7l__KO3TXRBcYXw',
      appId: '1:180850652245:android:49799f83cfea45ea9f90dc',
      messagingSenderId: '18085065224',
      projectId: 'flutter-filmsfay',
      storageBucket: 'flutter-filmsfay.appspot.com',
    ),
  );
  runApp(const AppTheme());
}

class AppTheme extends StatelessWidget {
  const AppTheme({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamProvider.value(
      initialData: null,
      value: AuthService().currentUser,
      child: MaterialApp(
      title: 'КиноГоу',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: routes,
      theme: themeData,
    ),
    );
  }
}
