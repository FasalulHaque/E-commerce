import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  Categories({Key? key}) : super(key: key);

  final category = [
    {'category': 'woman', 'image': 'asset/image/womwn.png'},
    {
      'category': 'Men',
      'image':
          'asset/image/casual-outfits-for-men-bewakoof-blog-9-1615892381.webp'
    },
    {'category': 'Footwear', 'image': 'asset/image/footwear.png'},
    {'category': 'Accessories', 'image': 'asset/image/Accessories1.png'},
    {'category': 'Gadgets', 'image': 'asset/image/Gadgets.png'},
    {'category': 'Kids', 'image': 'asset/image/Kids.png'},
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              ClipOval(
                child: Image.asset(
                  category[index].values.last,
                  width: 50,
                  height: 50,
                  fit: BoxFit.fill,
                ),
              ),
              Expanded(
                child: Text(category[index].values.first),
              ),
            ],
          ),
        );
      },
      itemCount: category.length,
    );
  }
}
