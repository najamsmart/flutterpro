import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/loogin.dart';
import 'package:flutter_application_2/pages/a.dart';
import 'package:flutter_application_2/pages/task.dart';
import 'package:flutter_application_2/reusable_widgets/reusable_widget.dart';
import 'package:flutter_application_2/utils/color_utils.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:provider/provider.dart';
import 'home.dart';

class MyLogin extends StatefulWidget {

  const MyLogin({Key? key}) : super(key: key);

  @override
  _MyLoginState createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _usernameController = TextEditingController();
  var studentId = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(

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
          child: Padding(

            padding: EdgeInsets.fromLTRB(
                20, MediaQuery.of(context).size.height * 0.2, 20, 0),

            child: Column(

              children: <Widget>[
                logoWidget("assets/aw.png"),
                const SizedBox(
                  height: 30,
                ),
                reusableTextField("Enter Email", Icons.person_outline, false,
                    _usernameController),
                const SizedBox(
                  height: 20,
                ),
                reusableTextField("Enter Password", Icons.lock_outline, true,
                    _passwordController),

                const SizedBox(
                  height: 20,
                ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              // mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ElevatedButton(
                    onPressed: () async {
                      login(_usernameController.text , _passwordController.text);

                      addUserForm.enteredValue.value = studentId;

                    },
                    style:  ButtonStyle(

                        padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.only(left: 70,right: 70,bottom: 12,top: 12)),
                        foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
                        backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                                side: BorderSide(color: Colors.grey)
                            )
                        )
                    ),
                    child: const Text('Login')),
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
void login(String username, String password) async{
    if (_passwordController.text.isNotEmpty && _usernameController.text.isNotEmpty){
      var url="https://dev.iec.org.pk/api/login";
      var data={
        "username":username,
        "password": password
      };
      var bodyy = json.encode(data);
      var urlParse=Uri.parse(url);
      Response response=await http.post(urlParse,
        body:bodyy,
        headers:{
        "Content-Type":"application/json"
        }
      );
      // var dataa=jsonDecode(response.body);
      // print(response.body);

      if (response.statusCode==200){
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => Home()));


        var data1 = jsonDecode(response.body);
        print(data1);
        var id = data1['id'];
        studentId = id;
        var access_token = data1['access_token'];
        var role = data1['role'][0];

        print(id);
        print(access_token);
        print(role);

        var url="https://dev.iec.org.pk/api/save_subscription";
        var dataa={"subscription":"","device_token":access_token, "user_id":id, "role":role };
        var body = json.encode(dataa);
        var urlParse=Uri.parse(url);
        Response response1=await http.post(urlParse,
            body:body,
            headers:{
              "Content-Type":"application/json"
            }
        );
        var dataaa = jsonDecode(response1.body);
        print(dataaa);
        var user_id = dataaa['user_id'];

        print(user_id);

  }else {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text('Incorrect Password')));

      }
    }else{
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text('Invaild')));
    }



    }


 }







