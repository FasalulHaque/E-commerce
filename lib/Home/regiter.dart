// ignore_for_file: deprecated_member_use

import 'package:baabtra/Home/Login.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter/material.dart';

class Register extends StatelessWidget {
  Register({super.key});
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController userNameController = TextEditingController();
  TextEditingController mobilNumberController = TextEditingController();
  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Form(
        key: _formkey,
        child: ListView.builder(
            itemCount: 1,
            itemBuilder: (BuildContext context, int index) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Padding(padding: EdgeInsets.only(top: 60)),
                  const ListTile(
                    title: Padding(
                      padding: EdgeInsets.all(50),
                      child: Text(
                        'Regsiter',
                        style: TextStyle(
                          color: Colors.white,
                          fontStyle: FontStyle.italic,
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    subtitle: Padding(
                      padding: EdgeInsets.all(2.0),
                      child: Text(
                        "Please Enter Details to Register",
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
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(9.0),
                    child: TextFormField(
                      // ignore: body_might_complete_normally_nullable
                      validator: (value) {
                        // ignore: avoid_print
                        print(value);
                        if (value!.length <= 5) {
                          return 'name should be atleast 5 charachter';
                        }
                      },
                      controller: userNameController,
                      decoration: const InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        border: UnderlineInputBorder(),
                        labelText: 'User Name',
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(9.0),
                    child: TextFormField(
                      controller: emailController,
                      decoration: const InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        border: UnderlineInputBorder(),
                        labelText: 'Email',
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(9.0),
                    child: TextField(
                      controller: passwordController,
                      decoration: const InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        border: UnderlineInputBorder(),
                        labelText: 'Pasword',
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(9.0),
                    child: TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        border: UnderlineInputBorder(),
                        labelText: 'Confirm Password',
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(9.0),
                    child: TextField(
                      controller: mobilNumberController,
                      decoration: const InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        border: UnderlineInputBorder(),
                        labelText: 'Mobile number',
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 35,
                  ),
                  SizedBox(
                    width: 300,
                    child: ElevatedButton(
                      onPressed: () {
                        if (_formkey.currentState!.validate()) {
                          createUser(
                              emailController.text,
                              passwordController.text,
                              userNameController.text,
                              mobilNumberController.text,
                              context);
                        }
                      },
                      // ignore: sort_child_properties_last
                      child: const Text('Register'),
      
                      style: ElevatedButton.styleFrom(
                        primary: const Color.fromARGB(228, 26, 54, 127),
                        side: const BorderSide(width: 2, color: Colors.white),
                        elevation: 3,
                      ),
                    ),
                  ),
                ],
              );
            }),
      ),
    );
  }

  Future<void> createUser(String email, String password, String name,
      String number, BuildContext context) async {
    final auth = FirebaseAuth.instance;
    final userRef = FirebaseFirestore.instance.collection('Users');
    try {
      await auth.createUserWithEmailAndPassword(
          email: email, password: password);
      await userRef.add({
        'userid': auth.currentUser!.uid,
        'userName': name,
        'email': email,
        'password': password,
        'mobileNumber': number
      });

      // ignore: use_build_context_synchronously
      Navigator.push(
          context, MaterialPageRoute(builder: ((context) => LoginScreen())));
    } on FirebaseAuthException catch (e) {
      // ignore: avoid_print
      print(e.code);

      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(e.code)));
    }
  }
}
