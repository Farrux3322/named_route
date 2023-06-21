import 'package:flutter/material.dart';
import 'package:named_route/app_routes.dart';

class ProductDetail extends StatefulWidget {
  const ProductDetail({Key? key}) : super(key: key);

  @override
  State<ProductDetail> createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Product Detail Screen"),),
      body: Column(
        children: [
          Center(child: ElevatedButton(onPressed: (){
            Navigator.pushNamed(context, RouteNames.products);
          },child: Text("Navigaor"),),)
        ],
      ),
    );
  }
}
