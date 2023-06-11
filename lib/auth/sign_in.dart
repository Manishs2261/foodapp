import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sign_button/sign_button.dart';




class Signin extends StatelessWidget {
  const Signin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 400,
              width: double.infinity,

              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [


                  Text('Sign in to contunue'),
                  Text('Vegi',style: TextStyle(fontSize: 50,
                  color: Colors.white30,
                  shadows: [
                    BoxShadow(
                      blurRadius: 5,
                      color:Colors.green.shade900,
                      offset: Offset(3,3),
                    )
                  ]),
                  ),
                Column(
                  children: [
                    SignInButton(
                      buttonType: ButtonType.google,
                      btnText: 'Sing in with Google',
                      onPressed: (){},
                    ),

                    SignInButton(
                      buttonType: ButtonType.apple,
                      btnText: 'Sing in with Apple',
                      onPressed: (){},
                    ),

                  ],
                ),

                  
                  Column(
                    children: [
                      Text("By signing in you are agreeing to our",style: TextStyle(
                        color: Colors.grey[800],
                      ),
                      ),

                      Text("Terms and Pricacy Policy",
                        style: TextStyle(color: Colors.grey[800]),
                      )
                    ],
                  ),


                ],
              ),

            ),
          ],
        ),

      ),

    );
  }
}



