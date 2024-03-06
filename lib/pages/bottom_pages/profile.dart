import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
              'images/channie.png',
              height: 200,
              width: 200,
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.9,
              child: TextField(
                style: const TextStyle(
                  color: Colors.white),
                cursorColor: const Color(0xffF9AC68),
                decoration: InputDecoration(
                  prefixIcon: const Icon(
                    Icons.login_outlined,
                    color: Color(0xffed6b5b),
                  ),
                  labelText: 'ФИО',
                  hintText: 'ФИ',
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
              height: MediaQuery.of(context).size.height*0.01,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.9,
              child: TextField(
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
              height: MediaQuery.of(context).size.height*0.015,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.9,
              child: TextField(
                style: const TextStyle(
                  color: Colors.white),
                cursorColor: const Color(0xffF9AC68),
                decoration: InputDecoration(
                  prefixIcon: const Icon(
                    Icons.login_outlined,
                    color: Color(0xffed6b5b),
                  ),
                  labelText: 'Логин',
                  hintText: 'Логин',
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
                onPressed: () {}, 
                child: const Text('Редактировать'),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height*0.03,
            ),
            TextButton(
                  onPressed: () {},
                  child: const Text('Выйти'),
              ),
            ],
        ),
      ),
    );
  }
}