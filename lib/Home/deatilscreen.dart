import 'package:flutter/material.dart';

class DeatilScreen extends StatelessWidget {
  const DeatilScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        elevation: 0,
        leading: IconButton(
            icon: Image.network(
              'https://static.thenounproject.com/png/251451-200.png',
              color: Colors.white,
            ),
            onPressed: () => Navigator.pop(context)),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(onPressed: () {}, icon: const Icon(Icons.shopping_bag)),
          const SizedBox(
            width: 2,
          )
        ],
      ),
    );
  }
}
