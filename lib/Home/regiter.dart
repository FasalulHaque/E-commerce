// ignore_for_file: deprecated_member_use

import 'package:baabtra/Home/Login.dart';
import 'package:flutter/material.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: ListView.builder(
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
                const Padding(
                  padding: EdgeInsets.all(9.0),
                  child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      border: UnderlineInputBorder(),
                      labelText: 'User Name',
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
                      labelText: 'Email',
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
                const Padding(
                  padding: EdgeInsets.all(9.0),
                  child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      border: UnderlineInputBorder(),
                      labelText: 'Mobil number',
                    ),
                  ),
                ),
                const SizedBox(
                  height: 35,
                ),
                SizedBox(
                  width: 300,
                  child: ElevatedButton(
                    onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LoginScreen(),
                      ),
                    ),
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
    );
  }
}
