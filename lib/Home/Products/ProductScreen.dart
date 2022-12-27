import 'package:baabtra/Home/Products/ProductModel.dart';
import 'package:baabtra/Home/Products/categoryP.dart';
import 'package:baabtra/Home/deatilscreen.dart';
import 'package:flutter/material.dart';

class product1 extends StatelessWidget {
  product1({super.key});

  List<ProductModel> products = [
    ProductModel(
        image: 'https://m.media-amazon.com/images/I/71I-5jWK--L._UL1500_.jpg',
        name: 'Pants',
        discrption: 'Good Quality',
        offer: '20% off',
        price: '\$1099'),
    ProductModel(
        image:
            'https://5.imimg.com/data5/BR/GE/MY-43691381/formal-shirts-for-men-dark-green-shirt-mens-supplier-500x500.jpg',
        name: 'Shirt',
        discrption: 'Good Quality',
        offer: '10% off',
        price: '\$999'),
    ProductModel(
        image:
            'https://assets.myntassets.com/dpr_1.5,q_60,w_400,c_limit,fl_progressive/assets/images/13855576/2022/4/25/1d9760b4-c33e-4d72-a6af-8e81970fd0161650883622705USPoloAssnMenGreySolidSneakers1.jpg',
        name: 'Shoes',
        discrption: 'Good Quality',
        offer: '10% off',
        price: '\$2599'),
    ProductModel(
        image:
            'https://rukminim1.flixcart.com/image/612/612/xif0q/t-shirt/z/s/q/xl-oversized-fit-organic-statement-t-shirt-printwear-original-imaggrqmsev5vpbf.jpeg?q=70',
        name: 'T Shirt',
        discrption: 'Good Quality',
        offer: '30% off',
        price: '\$899'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: ApBar(
      //   backgroundColor: Colors.white,
      //   iconTheme: const IconThemeData(color: Colors.black),
      //   title: const Center(
      //     child: Text(
      //       'TRUSTED SELLER',
      //       style: TextStyle(color: Colors.black),
      //     ),
      //   ),
      //   actions: const [
      //     Padding(
      //       padding: EdgeInsets.symmetric(horizontal: 8),
      //       child: Icon(
      //         Icons.search,
      //         color: Colors.black,
      //       ),
      //     ),
      //     Padding(
      //       padding: EdgeInsets.symmetric(horizontal: 8),
      //       child: Icon(
      //         Icons.shopping_bag_outlined,
      //         color: Colors.black,
      //       ),
      //     )
      //   ],
      // ),
      body: Column(
        children: [
          SizedBox(
            height: 80,
            child: Expanded(child: Categories()),
          ),
          Image.network(
            'https://img.freepik.com/free-photo/two-beautiful-women-shopping-town_1303-16426.jpg?w=2000',
            height: 270,
          ),
          Expanded(
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 12,
                mainAxisSpacing: 10,
                mainAxisExtent: 300,
              ),
              itemCount: products.length,
              itemBuilder: (BuildContext context, int index) {
                return InkWell(
                  onTap: (() => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            DeatilScreen(productAxis: products[index]),
                      ))),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 0.0),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.2),
                          color: Colors.grey),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 2),
                            child: Image.network(
                              '${products.elementAt(index).image}',
                              height: 170,
                              width: 320,
                              fit: BoxFit.contain,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Text(
                                  '${products.elementAt(index).name}',
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontStyle: FontStyle.italic,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  '${products.elementAt(index).discrption}',
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                    fontStyle: FontStyle.italic,
                                  ),
                                ),
                                Text(
                                  '${products.elementAt(index).offer}',
                                  style: const TextStyle(
                                    color: Colors.purple,
                                    fontStyle: FontStyle.italic,
                                  ),
                                ),
                                Text(
                                  '${products.elementAt(index).price}',
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontStyle: FontStyle.italic,
                                  ),
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: const Padding(
                                    padding: EdgeInsets.only(left: 82),
                                    child: Icon(
                                      Icons.shopping_cart,
                                      color: Color.fromARGB(255, 229, 226, 230),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
