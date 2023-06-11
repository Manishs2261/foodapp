import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodapp/config/colors.dart';

class ProductOverView extends StatefulWidget {
  const ProductOverView({super.key});

  @override
  State<ProductOverView> createState() => _ProductOverViewState();
}

//===============costome maethod============
Widget bottomNavigatorBar({

  required Color iconColor,
  required Color backgroundcolor,
  required Color color,
  required String titile,
  required IconThemeData iconData,
}){
  return Expanded(
      child: Container(


      ),
  );


}


class _ProductOverViewState extends State<ProductOverView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        backgroundColor: primary,
        iconTheme: IconThemeData(color: textColor),
        title: Text("Product Overview",
        style: TextStyle(color: textColor),),
      ),
    );
  }
}

