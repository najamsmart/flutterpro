import 'package:flutter/material.dart';

class Not extends StatefulWidget {
  const Not({Key? key}) : super(key: key);

  @override
  State<Not> createState() => _NotState();
}

class _NotState extends State<Not> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        children: const [
          Text(
            'Profile Page',
            style: TextStyle(
                fontSize: 40, color: Colors.white, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 100,
          ),
          // CircleAvatar(
          //   radius: 70,
          //   child: Icon(
          //     Icons.home,
          //     size: 120,
          //   ),
          // ),
          // SizedBox(
          //   height: 100,
          // ),
          // Text(
          //   'Profile Content',
          //   style: TextStyle(fontSize: 30, color: Colors.white),
          // ),
        ],
      ),
    );
  }
}
