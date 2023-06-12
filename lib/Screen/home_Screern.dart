import 'package:flutter/material.dart';
import 'package:foodapp/Screen/singleproduct.dart';

import 'drawerside.dart';

class  HomeScreen extends StatelessWidget {


  //================================================
  //method
  Widget singleProduct(context){

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children:[
            Text("Herbs Seasonings",),
            Text("view all",
              style: TextStyle(
                color: Colors.grey,
              ),)

          ],
        ),

        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [


             SingalProduct(productImage:('https://media.istockphoto.com/id/1131562141/photo/fresh-leaf-mint-green-herbs-ingredient.jpg?s=612x612&w=0&k=20&c=kRv4C79iDmSv1jcDjDMu35DC8oCjeazaMD8OM4IeBac='), productName:('fresh mint'), onTap: (){}),
             SingalProduct(productImage:('https://static.vecteezy.com/system/resources/thumbnails/012/574/364/small/mint-leaves-icons-leaf-illustration-green-mint-leaves-ecology-nature-element-icon-leaf-icon-mint-leaves-logo-illustration-vector.jpg'), productName:('fresh mint'), onTap: (){}),
             SingalProduct(productImage:('https://media.istockphoto.com/id/1131562141/photo/fresh-leaf-mint-green-herbs-ingredient.jpg?s=612x612&w=0&k=20&c=kRv4C79iDmSv1jcDjDMu35DC8oCjeazaMD8OM4IeBac='), productName:('fresh mint'), onTap: (){}),
             SingalProduct(productImage:('https://media.istockphoto.com/id/1131562141/photo/fresh-leaf-mint-green-herbs-ingredient.jpg?s=612x612&w=0&k=20&c=kRv4C79iDmSv1jcDjDMu35DC8oCjeazaMD8OM4IeBac='), productName:('fresh mint'), onTap: (){}),



              //========================

            ],
          ),
        ),


      ],



    );
  }


//===================================================
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Color(0xffcbcbcb),
drawer: Drawerside(),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        title: Text("Home",style: TextStyle(color: Colors.black,)
          ),
        actions: [
          CircleAvatar(
            radius: 12,
            backgroundColor: Color(0xffd4d181),
            child: Icon(Icons.search,size: 17,color:Colors.black,),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: CircleAvatar(
              radius: 12,
              backgroundColor: Color(0xffd4d181),
              child: Icon(Icons.shop,size: 17,color:Colors.black,),
            ),
          )
        ],
        backgroundColor: Color(0xffd6b738),
      ),


      body: Padding(

        padding: const EdgeInsets.all(10.0),
        child: ListView(

          children: [

            Container(
              height: 150,
                decoration: BoxDecoration(
               image: DecorationImage(
                 fit: BoxFit.cover,
                 image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQhDiQXXWQgHD7IaY49Mm8ZvyCQU0Gnl0Eswg&usqp=CAU'),
               ),
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(10),
                ),

                child: Row(

                  children: [
                    Expanded(


                      child: Container(


                      child: Column(
                        children: [
                          Padding(
                              padding:const EdgeInsets.only(right: 100,bottom: 20),
                          child: Container(


                            height: 50, width: 100,

                            decoration: BoxDecoration(

                                color: Color(0xffd1ad17),
                              borderRadius: BorderRadius.only(bottomRight: Radius.circular(50),
                              bottomLeft: Radius.circular(50))
                            ),
                            child: Center(
                              child: Text('Vegi',style: TextStyle(
                                fontSize: 25,
                                color: Colors.white,
                                shadows: [
                                  BoxShadow(
                                    color: Colors.green,
                                    blurRadius: 10,
                                    offset: Offset(3,3),
                                  )
                                ]
                              ),),
                            ),

                          ),
                          ),
                          Text("30% off ",style: TextStyle(
                            fontSize: 40,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            shadows:[
                              BoxShadow(
                                color: Colors.green,
                                blurRadius: 10,
                                offset: Offset(3,3),
                              )
                            ]
                          ),
                          ),

                          Text("On all vegitable products",
                          style: TextStyle(
                            color: Colors.white,
                          ),)
                        ],
                      ),

                    ),
                    ),
                    Expanded(child: Container(

                    ),
                    ),
                  ],
                ),

            ),

            Padding(
              padding: EdgeInsets.symmetric(vertical: 5),
            ),




            singleProduct(context),
            singleProduct(context),
            singleProduct(context),
          ],
        ),
      ),
    );
  }
}


