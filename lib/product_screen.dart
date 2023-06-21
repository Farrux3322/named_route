import 'package:flutter/material.dart';

import 'app_routes.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({Key? key, required this.data}) : super(key: key);

  final List<String> data ;

  @override
  State<ProductScreen> createState() => _ProductScreen();
}

class _ProductScreen extends State<ProductScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Product Screen"),),
      body: Column(
        children: [
          Center(child: ElevatedButton(onPressed: (){
            Navigator.pushNamed(context, RouteNames.productDetails);
          },child: Text("Navigaor"),),),
          Expanded(child: ListView(
            children: [
              ...List.generate(widget.data.length, (index) => Text(widget.data[index]))
            ],
          ))
        ],
      ),
    );
  }
}
