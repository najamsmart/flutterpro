


import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:flutter_application_2/pages/profile.dart';
import 'package:flutter_application_2/pages/repository.dart';
import 'package:http/http.dart';
import 'package:provider/provider.dart';
import '../home.dart';
import '../login.dart';
import '../reusable_widgets/reusable_widget.dart';
import '../utils/color_utils.dart';
import 'package:intl/intl.dart';


class addUserForm extends StatefulWidget {
  static ValueNotifier<String> enteredValue = ValueNotifier('');





  const addUserForm(  {Key? key, }) : super(key: key);


  @override
  State<addUserForm> createState() => _addUserFormState();
}

class _addUserFormState extends State<addUserForm> {
  var _titleController = TextEditingController();
  var _descriptionController = TextEditingController();
  var _dateController = TextEditingController();
  var _student_idController = TextEditingController();






  @override
  Widget build(BuildContext context) {


    return Scaffold(

      body: Container(


        width: MediaQuery
            .of(context)
            .size
            .width,
        height: MediaQuery
            .of(context)
            .size
            .height,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              hexStringToColor("#ffa8a8"),
              hexStringToColor("#cdfaf4"),
              hexStringToColor("5E61F4")
            ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
        child: SingleChildScrollView(

          child: Padding(

            padding: EdgeInsets.fromLTRB(
                20, MediaQuery
                .of(context)
                .size
                .height * 0.2, 20, 0),


            child: Column(


              children: <Widget>[
                // logoWidget("assets/aw.png"),
                // const SizedBox(
                //   height: 30,
                // ),
                TextField(

                  keyboardType: TextInputType.multiline,
                  controller: _titleController,
                  decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    hintText: 'title',
                    labelText: 'title',


                  ),

                ),
                const SizedBox(
                  height: 20,
                ),


                TextField(

                  keyboardType: TextInputType.multiline,
                  controller: _descriptionController,
                  decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    hintText: 'description',
                    labelText: 'description',


                  ),
                  maxLines: 5,
                  minLines: 3,
                ),
                const SizedBox(
                  height: 20,
                ),
                // TextField(
                //   initialValue: id.toString(),
                // ),


                ValueListenableBuilder(
                  valueListenable: addUserForm.enteredValue,

                  builder: (context, String newValue, child) {
                    return Text(
                      newValue,
                      style: TextStyle(
                        fontSize: 24,
                      ),
                    );
                  },
                ),


                const SizedBox(
                  height: 20,
                ),

                TextField(

                  controller: _dateController,
                  decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    hintText: 'date',
                    labelText: 'date',


                  ),
                  onTap: () async {
                    DateTime? pickedDate = await showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(2000),
                        //DateTime.now() - not to allow to choose before today.
                        lastDate: DateTime(2101)
                    );

                    if (pickedDate != null) {
                      print(
                          pickedDate); //pickedDate output format => 2021-03-10 00:00:00.000
                      String formattedDate = DateFormat('yyyy-MM-dd').format(
                          pickedDate);
                      print(
                          formattedDate); //formatted date output using intl package =>  2021-03-16
                      //you can implement different kind of Date Format here according to your requirement

                      setState(() {
                        _dateController.text =
                            formattedDate; //set output date to TextField value.
                      });
                    } else {
                      print("Date is not selected");
                    }
                  },
                ),


                const SizedBox(
                  height: 20.0,
                ),


                Row(


                  mainAxisAlignment: MainAxisAlignment.center,


                  // mainAxisAlignment: MainAxisAlignment.start,
                  children: [


                    ElevatedButton(


                        onPressed: () async {

                          task();
                        },


                        style: ButtonStyle(

                            padding: MaterialStateProperty.all<EdgeInsets>(
                                EdgeInsets.only(
                                    left: 70, right: 70, bottom: 12, top: 12)),
                            foregroundColor: MaterialStateProperty.all<Color>(
                                Colors.black),
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Colors.white),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                    side: BorderSide(color: Colors.grey)
                                )
                            )
                        ),

                        child: const Text('Summit')),


                    const SizedBox(
                      width: 10.0,
                    ),

                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }




  void task() async{
    var client = http.Client();
    var uri = Uri.parse("https://dev.iec.org.pk/api/add_task");
    final http.Response response = await client.post(
      uri,
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, dynamic>{
        'date': _dateController.text,
        'description':  _descriptionController.text,
        'student_id': _student_idController.text,
        'title':_titleController.text,

      }),
    );
    if (response.statusCode == 200) {
      var json = response.body;
      // return User.fromJson(jsonDecode(json));
    } else {
      throw Exception('Failed to Save User.');
    }
  }

}













