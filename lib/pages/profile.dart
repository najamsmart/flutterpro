import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:widget_circular_animator/widget_circular_animator.dart';


import 'package:firebase_auth/firebase_auth.dart';

import '../login.dart';
import '../reusable_widgets/reusable_widget.dart';
import '../utils/color_utils.dart';
import 'package:flutter/cupertino.dart';



class Profile extends StatelessWidget {
  Profile({super.key});

  // final user = FirebaseAuth.instance.currentUser!;

  // sign user out method
  void signUserOut() {
    FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("LogPage"),

      ),


      body: Container(
        width: MediaQuery.of(context).size.width,
    height: MediaQuery.of(context).size.height,
    decoration: BoxDecoration(
    gradient: LinearGradient(colors: [
    hexStringToColor("#ffa8a8"),
    hexStringToColor("#cdfaf4"),
    hexStringToColor("5E61F4")
    ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
    child: SingleChildScrollView(
    child:
      Padding(


        padding: const EdgeInsets.all(16.0),

        child: Stack(

          children: [

            Column(



              children: [
                SizedBox(
                  height: 72,
                ),
        WidgetCircularAnimator(
        size: 150,
          innerIconsSize: 3,
          outerIconsSize: 3,
          innerAnimation: Curves.bounceIn,
          outerAnimation: Curves.bounceIn,
          innerColor: Colors.blue,
          reverse: false,
          outerColor: Colors.red,
          innerAnimationSeconds: 10,
          outerAnimationSeconds: 10,
          child: Container(

            decoration:
            BoxDecoration(shape: BoxShape.circle, color: Colors.grey[200]),
            child: Icon(
              Icons.person_outline,
              color: Colors.blue[200],
              size: 60,
            ),
          ),
        ),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.center,
                //   children: [
                //     Icon(
                //       Icons.mail_outline_rounded,
                //       size: 100,
                //     ),
                //   ],
                // ),

                // Row(
                //   mainAxisAlignment: MainAxisAlignment.center,
                //   children: [
                //     Text(
                //       'Check your mail',
                //       style: Theme.of(context).textTheme.headline4,
                //     ),
                //   ],
                // ),
                SizedBox(

                  height: 46,
                ),
                Row(

                  children: [



                  ],
                ),
                SizedBox(

                  height: 52,
                ),
                Container(
                  width: 150,

                    // child: ElevatedButton.icon(
                    //   style: ElevatedButton.styleFrom(
                    //     minimumSize: Size.fromHeight(50),
                    //   ),
                    //   icon: Icon(Icons.arrow_back, size: 32),
                    //     label: Text(
                    //     'Sign Out',
                    //       style: TextStyle(fontSize:24),
                    //     ),
                    //   onPressed: ()=>FirebaseAuth.instance.signOut(),
                    //   ),


                    child: firebaseUIButton(context, "Sign Up", () {

                      Navigator.of(context, rootNavigator: true).pushReplacement(
                          MaterialPageRoute(builder: (context) => MyLogin()));

                    })
                ),

                  ],



                ),
              ],
            )


      ),
    ),
      ),


    );
  }
}
