// ignore_for_file: use_build_context_synchronously

import 'package:baabtra/Home/Dashbard/Dashbard.dart';
import 'package:baabtra/Home/Products/ProductAppBar.dart';
import 'package:baabtra/Home/Products/ProductScreen.dart';
import 'package:baabtra/Home/regiter.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  TextEditingController mailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: ListView.builder(
        itemCount: 1,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Padding(padding: EdgeInsets.only(bottom: 90)),
              const ListTile(
                title: Padding(
                  padding: EdgeInsets.only(top: 100),
                  child: Text(
                    'Login',
                    style: TextStyle(
                      color: Colors.white,
                      fontStyle: FontStyle.italic,
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                subtitle: Padding(
                  padding: EdgeInsets.only(top: 25),
                  child: Text(
                    '        Please login to your account',
                    style: TextStyle(
                      color: Colors.black,
                      fontStyle: FontStyle.italic,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),


              Padding(
                padding: const EdgeInsets.all(9.0),
                child: TextField(
                  controller: mailController,
                  decoration: const InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    border: UnderlineInputBorder(),
                    labelText: 'Email',
                  ),
                ),
              ),
              const SizedBox(
                height: 0,
              ),

              Padding(
                padding: const EdgeInsets.all(9.0),
                child: TextField(
                  controller: passwordController,
                  decoration: const InputDecoration(
                      // suffix: TextButton(
                      //   onPressed: () {},
                      //   child: const Text(
                      //     'Forget Password',
                      //   ),

                      filled: true,
                      fillColor: Colors.white,
                      border: UnderlineInputBorder(),
                      labelText: 'Password'),
                ),
              ),
              const SizedBox(
                height: 20,
              ),

              SizedBox(
                width: 300,
                child: ElevatedButton(
                  onPressed: () async {
                    final auth = FirebaseAuth.instance;
                    try {
                      await auth.signInWithEmailAndPassword(
                          email: mailController.text,
                          password: passwordController.text);

                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: ((context) => const Dashbard()),
                        ),
                      );
                    } on FirebaseAuthException catch (e) {
                      ScaffoldMessenger.of(context).showSnackBar( SnackBar(
                          content: Text(e.code),));
                      // ignore: avoid_print
                      print(e.code);
                       // ignore: avoid_print
                      print('Login Failed');
                    }
                  },
                  // ignore: sort_child_properties_last
                  child: const Text('Login'),
                  style: ElevatedButton.styleFrom(
                      // ignore: deprecated_member_use
                      primary: const Color.fromARGB(228, 26, 54, 127),
                      side: const BorderSide(width: 2, color: Colors.white),
                      elevation: 3,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    color: Colors.white,
                    onPressed: () {},
                    icon: Row(
                      children: const [
                        Icon(
                          Icons.facebook_outlined,
                          color: Colors.blue,
                        ),
                      ],
                    ),
                  ),
                  IconButton(
                      color: Colors.white,
                      onPressed: () {},
                      icon: const Icon(
                        Icons.whatsapp_outlined,
                        color: Colors.greenAccent,
                      )),
                ],
              ),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Dont have an account ?'),
                  TextButton(
                    onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>  Register(),
                      ),
                    ),
                    child: const Text(
                      'Regsiter',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ],
          );
        },
      ),
    );
  }
}
