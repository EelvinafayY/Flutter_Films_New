// ignore_for_file: use_build_context_synchronously

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_films/database/collections/users_collection.dart';
import 'package:flutter_films/database/user_service/service.dart';
import 'package:toast/toast.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key});

  @override
  State<RegistrationPage> createState() => _RegistrationPage();
}

class _RegistrationPage extends State<RegistrationPage> {

  TextEditingController namecontroller = TextEditingController();
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  TextEditingController passcheckcontroller = TextEditingController();
  AuthService authService = AuthService();
  UserCollection userCollection = UserCollection();
  bool visibility = false;

  @override
  Widget build(BuildContext context) {
    ToastContext().init(context);
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
              height: MediaQuery.of(context).size.height*0.05,
            ),
          const Text(
            'Регистрация',
            style: TextStyle(
              color: Color(0xffed6b5b),
              ),
               textScaler: TextScaler.linear(2),
            ),
          SizedBox(
              height: MediaQuery.of(context).size.height*0.02,
            ),
          SizedBox(
              width: MediaQuery.of(context).size.width * 0.9,
              child: TextField(
                controller: namecontroller,
                style: const TextStyle(color: Colors.white),
                cursorColor: const Color(0xffF9AC68),
                decoration: InputDecoration(
                  prefixIcon: const Icon(
                    Icons.people,
                    color: Color(0xffed6b5b),
                  ),
                  labelText: 'Nickname',
                  hintText: 'Nickname',
                  hintStyle: const TextStyle(color: Colors.white54),
                  labelStyle: const TextStyle(
                    color: Color(0xffed6b5b),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      color: Color(0xffF9AC68),
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      color: Color(0xffF9AC68),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.015,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.9,
              child: TextField(
                controller: emailcontroller,
                style: const TextStyle(color: Colors.white),
                cursorColor: const Color(0xffF9AC68),
                decoration: InputDecoration(
                  prefixIcon: const Icon(
                    Icons.email,
                    color: Color(0xffed6b5b),
                  ),
                labelText: 'Email',
                hintText: 'Email',
                hintStyle: const TextStyle(color: Colors.white54),
                labelStyle: const TextStyle(
                    color: Color(0xffed6b5b),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      color: Color(0xffF9AC68),
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      color: Color(0xffF9AC68),
                    ),
                  ),
              ),
            ),
          ),
          SizedBox(
              height: MediaQuery.of(context).size.height * 0.015,
            ),
          SizedBox(
              width: MediaQuery.of(context).size.width * 0.9,
              child: TextField(
                controller: passwordcontroller,
                obscureText: !visibility,
                style: const TextStyle(color: Colors.white),
                cursorColor: const Color(0xffF9AC68),
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                    icon: !visibility
                    ? const Icon(
                      Icons.visibility,
                      color: Color(0xffed6b5b),  
                    )
                    :const Icon(
                      Icons.visibility_off, 
                      color: Color(0xffed6b5b),
                    ),
                    onPressed: () {
                      setState(() {
                        visibility = !visibility;
                      });
                    },
                  ),
                  prefixIcon: const Icon(
                    Icons.password,
                    color: Color(0xffed6b5b),
                  ),
                labelText: 'Пароль',
                hintText: 'Пароль',
                hintStyle: const TextStyle(color: Colors.white54),
                labelStyle: const TextStyle(
                    color: Color(0xffed6b5b),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      color: Color(0xffF9AC68),
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      color: Color(0xffF9AC68),
                    ),
                  ),
              ),
            ),
          ),
          SizedBox(
              height: MediaQuery.of(context).size.height * 0.015,
          ),
          SizedBox(
              width: MediaQuery.of(context).size.width * 0.9,
              child: TextField(
                controller: passcheckcontroller,
                obscureText: !visibility,
                style: const TextStyle(color: Colors.white),
                cursorColor: const Color(0xffF9AC68),
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                    icon: !visibility
                    ? const Icon(
                      Icons.visibility,
                      color: Color(0xffed6b5b),  
                    )
                    :const Icon(
                      Icons.visibility_off, 
                      color: Color(0xffed6b5b),
                    ),
                    onPressed: () {
                      setState(() {
                        visibility = !visibility;
                      });
                    },
                  ),
                  prefixIcon: const Icon(
                    Icons.password,
                    color: Color(0xffed6b5b),
                  ),
                labelText: 'Повторите пароль',
                hintText: 'Повторите пароль',
                hintStyle: const TextStyle(color: Colors.white54),
                labelStyle: const TextStyle(
                    color: Color(0xffed6b5b),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      color: Color(0xffF9AC68),
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      color: Color(0xffF9AC68),
                    ),
                  ),
              ),
            ),
          ),
          SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
          ),
          SizedBox(
              width: MediaQuery.of(context).size.width * 0.5,
              height: MediaQuery.of(context).size.height * 0.06,
              child: ElevatedButton(
                onPressed: () async{
                  if (namecontroller.text.isEmpty ||
                  emailcontroller.text.isEmpty ||
                  passcheckcontroller.text.isEmpty ||
                  passwordcontroller.text.isEmpty) {
                    Toast.show('Заполните все поля');
                  } else {
                    if(passcheckcontroller.text == passwordcontroller.text) {
                      var user = await authService.singUp(
                        emailcontroller.text, passwordcontroller.text);
                    if (user != null){
                      await  userCollection.addUserCollection(
                        user.id!,
                        emailcontroller.text, 
                        namecontroller.text, 
                        '', 
                        passwordcontroller.text);
                        Navigator.popAndPushNamed(context, '/');
                    } else {
                      Toast.show('Проверьте правильность данных');
                    }
                    } else {
                      Toast.show('Пароли не совпадают');
                    }
                  }
                }, 
                child: const Text('Зарегистрироваться'),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height*0.03,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Есть аккаунт?",
                  style: TextStyle(color: Colors.white60),
                ),
                TextButton(
                  onPressed: () => Navigator.popAndPushNamed(context, '/'),
                  child: const Text('Авторизироваться'),
                ),
              ],
            ),
        ],
      ),
    );
  }
}