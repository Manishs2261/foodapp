import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodapp/config/colors.dart';

enum SinginCharacter {fill , outline}

class ProductOverView extends StatefulWidget {

  final String productNamr;
  final String productImage;


  ProductOverView({ required this.productNamr, required this.productImage});

  @override
  State<ProductOverView> createState() => _ProductOverViewState();
}

class _ProductOverViewState extends State<ProductOverView> {

  SinginCharacter _character = SinginCharacter.fill;


  //===============costome maethod============
  Widget bottomNavigatorBar({

    required Color iconColor,
    required Color backgroundcolor,
    required Color colorr,
    required String titile,
    required IconData icondta,
  }){
    IconData? iconData;
    return Expanded(
      child: Container(

        padding: EdgeInsets.all( 20),
        color:backgroundcolor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Icon(
              icondta,
              size: 17,
              color: iconColor,
            ),
            SizedBox(
              width: 5,),
            Text(
              titile,

              style: TextStyle(
                  color: colorr
              ),
            ),

          ],
        ),


      ),
    );


  }





  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:Row(
        children: [

          bottomNavigatorBar(iconColor: Colors.black, backgroundcolor: primary,
              colorr: Colors.black, titile:"Add To WishLIst", icondta: Icons.favorite_outline),

          bottomNavigatorBar(iconColor: Colors.white, backgroundcolor: textColor,
              colorr: Colors.white, titile:"Add To WishLIst", icondta: Icons.share_outlined),

    ]

      ),
      appBar:  AppBar(
        backgroundColor: primary,
        iconTheme: IconThemeData(color: textColor),
        title: Text("Product Overview",
        style: TextStyle(color: textColor),),
      ),

      body: Column(

        children: [
          Expanded(
            flex: 2,
            child: Container(
              width: double.infinity,
              child: Column(
                children: [
                  ListTile(
                    title: Text(widget.productNamr),
                    subtitle: Text("\$50"),
                  ),
                  Container(
                    height: 250,
                    padding: EdgeInsets.all(40),
                    child: Image.network(widget.productImage),

                  ),
                  Container(

                    padding: EdgeInsets.symmetric(horizontal: 20),
                    width: double.infinity,
                    child: Text("Available Option",
                    textAlign:TextAlign.start,
                      style: TextStyle(
                        color: textColor,
                        fontWeight: FontWeight.w600,
                      ),
                    ),

                  ),
                  Padding(padding: EdgeInsets.symmetric(
                    horizontal: 10,
                  ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 3,
                              backgroundColor: Colors.green[700],
                            ),
                         Radio(
                           value: _character,
                             groupValue: _character,
                             activeColor: Colors.green[700],
                             onChanged:(value){
                             setState(() {

                               _character = value!;
                             }
                             );
                             }
                             ),
                          ],

                        ),
                        Text("\$50"),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 30,
                          vertical: 10),

                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(30)
                          ),
                          child: Row(
                            children: [
                              Icon(Icons.add,
                              size: 17,
                                  color: Colors.black,),
                              Text("ADD",
                              style: TextStyle(
                                color: Colors.red
                              ),),


                            ],
                          ),
                        ),

                      ],
                    ),
                  )
                ],
              ),



            ),
          ),

          Expanded(
              child: Container(
                padding: EdgeInsets.all(10),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: [
                    Text("About This Product",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight:FontWeight.w600,
                      
                    ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    
                    Text("Copyright ownership gives the owner the exclusive right to use the work, with some exceptions. When a person creates an original "
                        "work, fixed in a tangible medium, he or she automatically owns copyright to the work.",
                    style:TextStyle(
                      fontSize: 16,
                      color: textColor
                    ),)
                  ],
                ),

              ),
          ),
        ],
      ),
    );
  }
}

