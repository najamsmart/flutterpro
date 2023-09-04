import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../login.dart';
class Aa extends StatelessWidget {

  const Aa({Key? key}) : super(key: key);


// class Aa extends StatefulWidget {
//
//   // const Aa({Key? key}) : super(key: key);
//
//   @override
//   State<Aa> createState() => _AaState();
// }
//
// class _AaState extends State<Aa> {
//


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            // Image.asset('assets/images/output.gif',
            //     height: 200,
            //     scale: 2.5,
            //     // color: Color.fromARGB(255, 15, 147, 59),
            //     opacity:
            //     const AlwaysStoppedAnimation<double>(0.5)), //Image.asset
            Image.asset(
              'assets/a.png',
              height: 500,
              width: 400,
            ),


          ], //<Widget>[]
        ), //Column
      ), //Center

    );
  }
}



