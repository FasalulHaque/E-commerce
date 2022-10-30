import 'package:baabtra/Home/Products/ProductScreen.dart';
import 'package:baabtra/Home/navigationBar/navigation.dart';
import 'package:baabtra/Profil/profil.dart';
import 'package:baabtra/Shopping/Shopping.dart';
import 'package:baabtra/notification/notification.dart';
import 'package:flutter/material.dart';

class Dashbard extends StatefulWidget {
  const Dashbard({super.key});

  @override
  State<Dashbard> createState() => _DashbardState();
}

class _DashbardState extends State<Dashbard> {
  int _selectedindex = 0;

  void _onltemTapped(int index) {
    setState(() {
      _selectedindex = index;
    });
  }

  // ignore: prefer_final_fields
  List<Widget> _widgets = [
    product1(),
    const Notific(),
    const NavigationList(),
    const ShoppingScreen(),
    const Profil()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavigationList(),
      appBar: AppBar(
        
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
        title: const Center(
          child: Text(
            'TRUSTED SELLER',
            style: TextStyle(color: Colors.blue),
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: Icon(
              Icons.search,
              color: Colors.black,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: Icon(
              Icons.shopping_bag_outlined,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: _widgets.elementAt(_selectedindex),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
              backgroundColor: Color.fromARGB(255, 53, 49, 49)),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications),
              label: 'Notifications',
              backgroundColor: Colors.black),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_box),
              label: 'Account',
              backgroundColor: Colors.black),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              label: 'Shopping Chart',
              backgroundColor: Colors.black),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profil',
              backgroundColor: Colors.black),
        ],
        currentIndex: _selectedindex,
        selectedItemColor: Colors.yellow,
        onTap: _onltemTapped,
      ),
    );
  }
}
