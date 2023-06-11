
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Drawerside extends StatelessWidget {

  Widget listTile({required IconData icon, required String title}){

    return ListTile(

      leading: Icon(
          icon,size: 32),
      title: Text(title,style: TextStyle(
          color: Colors.black45
      ),),

    );
  }


  @override
  Widget build(BuildContext context) {
    return Drawer(

      child: Container(
        color: Color(0xffdaad17),
        child: ListView(
          children: [

            DrawerHeader(
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.white70,
                    radius: 43,
                    child: CircleAvatar(radius: 40,
                      backgroundColor: Colors.yellow,

                    ),
                  ),
                  SizedBox(
                    height: 20,
                    width: 20,
                  ),
                  Column(

                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      Text('Welcome Guest'),
                      SizedBox(
                        height: 7,
                      ),
                      Container(
                        height: 30,

                        child: OutlinedButton(

                          onPressed: (){},
                          child: Text('Login'),

                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            //===============coustome mathod coll==============
            listTile(icon:  Icons.home_outlined, title: "Home"),
            listTile(icon:  Icons.shop_outlined, title: "Recview Card"),
            listTile(icon:  Icons.person, title: "My profile"),
            listTile(icon:  Icons.notifications_outlined, title: "Notification"),
            listTile(icon:  Icons.star_outline, title: "Ratibg & Review"),
            listTile(icon:  Icons.favorite_outline, title: "Wishlist"),
            listTile(icon:  Icons.copy_outlined, title: "Raise a Compalalint"),
            listTile(icon:  Icons.format_quote_outlined, title: "FAQs"),

            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              height: 350,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Contact Support"),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text('Call us:'),
                      Text("+91 7895469231"),

                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(

                    children: [
                      Text('Mail us:'),
                      Text('sahusanju138@gmail.com'),
                    ],
                  )

                ],
              ),
            )

            //=====================================
          ],
        ),
      ),
    );
  }
}
