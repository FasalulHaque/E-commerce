import 'package:baabtra/Home/Products/ProductModel.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DeatilScreen extends StatelessWidget {
  DeatilScreen({super.key, required this.productAxis});
  ProductModel productAxis;

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
          ),
        ],
      ),
      body: ListView(
        children: [
          SafeArea(
              child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(40),
                  child: Container(
                    height: 300,
                    width: 600,
                    alignment: Alignment.center,
                    child: Image.network(
                      productAxis.image!,
                      height: 400,
                      width: 300,
                    ),
                  ),
                ),
                // ignore: avoid_unnecessary_containers
                Container(
                  // alignment: Alignment(, y),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 5, right: 270),
                        child: Text(
                          productAxis.name!,
                          style: const TextStyle(
                            fontSize: 30,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 5, right: 270),
                        child: Text(
                          productAxis.offer!,
                          style: const TextStyle(
                              color: Colors.purple,
                              fontSize: 18,
                              fontStyle: FontStyle.italic),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 5, right: 250),
                        child: Text(
                          productAxis.discrption!,
                          style: const TextStyle(
                              color: Colors.grey,
                              fontSize: 18,
                              fontStyle: FontStyle.italic),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 5, right: 260),
                        child: Text(
                          productAxis.price!,
                          style: const TextStyle(
                              fontSize: 18,
                              fontStyle: FontStyle.italic,
                              color: Colors.blue),
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(children: [
                          ListTile(
                            leading: TextButton(
                              onPressed: () {},
                              child: const Text(
                                'Delivery Details',
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            trailing: TextButton(
                              onPressed: () {},
                              child: const Text(
                                'check delivery details',
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontStyle: FontStyle.normal,
                                    fontSize: 13),
                              ),
                            ),
                          ),
                        ]),
                      ),
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          children: [
                            ListTile(
                              leading: TextButton(
                                onPressed: () {},
                                child: const Text(
                                  'Bank Offers',
                                  style: TextStyle(color: Colors.black),
                                ),
                              ),
                              trailing: TextButton(
                                onPressed: () {},
                                child: const Text(
                                  'More',
                                  style: TextStyle(fontSize: 13),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      SingleChildScrollView(
                        child: Padding(
                          padding: const EdgeInsets.only(right: 150),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: Card(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8)),
                                  child: Column(
                                    children: [
                                      IconButton(
                                          onPressed: () {},
                                          icon: const Icon(Icons.share))
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              Card(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8)),
                                child: Column(
                                  children: [
                                    IconButton(
                                        onPressed: () {},
                                        icon: const Icon(Icons.shopping_bag)),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )),
        ],
      ),
    );
  }
}
