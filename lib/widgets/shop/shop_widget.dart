import 'package:flutter/material.dart';

class ShopProduct {
  ShopProduct({
    required this.name,
    required this.description,
    required this.price,
    required this.imageUrl,
  });

  final String name;
  final String description;
  final double price;
  final String imageUrl;
}

class ShopWidget extends StatelessWidget {
  ShopWidget({super.key});

  final List<ShopProduct> products = <ShopProduct> [
    ShopProduct(
      name: 'Dark sunglasses',
      description: 'Incredible anti sunlight glasses!',
      price: 10,
      imageUrl: 'https://t.pimg.jp/068/126/482/1/68126482.jpg',
    ),
    ShopProduct(
      name: 'Sunlight',
      description: 'Product 2 of sunlight',
      price: 20,
      imageUrl: 'https://cdn.shopify.com/s/files/1/0562/2684/0753/products/oroton-orp1900847-1900847-54_1_x450.jpg?v=1657009010',
    ),
    ShopProduct(
      name: 'Core Protect',
      description: 'Best protection for your eyes',
      price: 30,
      imageUrl: 'https://cdn.shopify.com/s/files/1/0109/5012/products/RORY52_RX_MATTEBLACK_FRONT.jpg?v=1666720160',
    ),
    ShopProduct(
      name: 'Amazing Sun',
      description: 'Beach pair',
      price: 40,
      imageUrl: 'https://img.ebdcdn.com/product/frame/white/pm0136_3.jpg?im=Resize,width=600,height=300,aspect=fill;UnsharpMask,sigma=1.0,gain=1.0',
    ),
    ShopProduct(
      name: 'Dark sunglasses',
      description: 'Incredible anti sunlight glasses!',
      price: 10,
      imageUrl: 'https://t.pimg.jp/068/126/482/1/68126482.jpg',
    ),
    ShopProduct(
      name: 'SunPLease',
      description: 'Best looking sunglasses',
      price: 20,
      imageUrl: 'https://cdn.shopify.com/s/files/1/0562/2684/0753/products/oroton-orp1900847-1900847-54_1_x450.jpg?v=1657009010',
    ),
    ShopProduct(
      name: 'BeachProof',
      description: 'Amazing Beach',
      price: 30,
      imageUrl: 'https://cdn.shopify.com/s/files/1/0109/5012/products/RORY52_RX_MATTEBLACK_FRONT.jpg?v=1666720160',
    ),
    ShopProduct(
        name: 'Amazing Sun',
        description: 'Beach pair',
        price: 40,
        imageUrl: 'https://img.ebdcdn.com/product/frame/white/pm0136_3.jpg?im=Resize,width=600,height=300,aspect=fill;UnsharpMask,sigma=1.0,gain=1.0',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product List'),
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (BuildContext context, int index) {
          final ShopProduct product = products[index];

          return ListTile(
            leading: Image.network(
              product.imageUrl,
              height: 60,
              width: 60,
              fit: BoxFit.cover,
            ),
            title: Text(product.name),
            subtitle: Text(product.description),
            trailing: Text('\$${product.price.toStringAsFixed(2)}'),
          );
        },
      ),
    );
  }
}
