import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodapp/Screen/productview/productoverview.dart';

class SingalProduct extends StatelessWidget {


   final String productImage;
   final String productName;
  final Function onTap;

   SingalProduct({required this.productImage, required this.productName,required this.onTap,});


   // ==============Constructor=========================


  @override
  Widget build(BuildContext context) {

    return  SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [

          Container(

            margin: EdgeInsets.symmetric(horizontal: 5,vertical: 8),
            height: 230,
            width: 160,

            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular( 10),

            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap:(){

                    Navigator.of(context).push(MaterialPageRoute(
                        builder:(context) => ProductOverView(productImage: productImage,productNamr: productName,)),
                    );
                  },
                  child: Container(
                    height: 150,
                    padding: EdgeInsets.all(5),
                    width: double.infinity,
                    child: Image.network(productImage),
                  ),
                ),
                Expanded(
                  flex:2,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 2, ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(productName,
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text('50 per gram',
                          style: TextStyle(
                            color: Colors.grey,

                          ),
                        ),

                        SizedBox(height: 2,),

                        Row(
                          children: [
                            Expanded(child:Container(
                              padding: EdgeInsets.symmetric(horizontal: 5),
                              height: 30,
                              width: 50,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Row(
                                children: [

                                  Expanded(child: Text("50g",style:
                                  TextStyle(
                                    fontSize: 15,
                                  ),),
                                  ),
                                  Expanded(
                                    child: Icon(
                                      Icons.arrow_drop_down,
                                      size: 20,
                                      color:Colors.yellow.shade700,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            ),

                            SizedBox( width: 5),
                            Expanded(child:Container(
                              height: 30,
                              width: 50,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Row(
                                mainAxisAlignment:MainAxisAlignment.center,
                                children: [

                                  Icon(Icons.remove,size: 15,),
                                  Text('1'),
                                  Icon(Icons.add,size: 20,)


                                ],
                              ),
                            ),
                            ),
                          ],
                        )


                      ],
                    ),
                  ),
                ),
              ],
            ),

          ),
        ],
      ),
    );
  }
}



