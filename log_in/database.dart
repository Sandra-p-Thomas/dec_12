import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../screens/home-screen.dart';
class Backoff extends StatefulWidget {
  const Backoff({Key? key}) : super(key: key);

  @override
  State<Backoff> createState() => _BackoffState();
}

class _BackoffState extends State<Backoff> {
  final _formkey = GlobalKey<FormState>();
  String? fname,lname,phone,mail,pass;
  void writedData()async{
    _formkey.currentState?.save();
    var url ="https://slack-test-d83b8-default-rtdb.firebaseio.com/"+"Mydata.json";
    try{
      final response = await http.post(Uri.parse(url),
body: json.encode({
  "first name": fname,
  "second":lname,
  "phonenumner":phone,
  "email":mail,
  "password":pass
}),
      );

    }catch(e){
      print("error");
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Form(
           key: _formkey,
          child: Column(
            children: [
              SizedBox(height: 19),
              TextFormField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.all(5),
                  hintText: " first name",
                  icon: Icon(Icons.person_outlined,color: Colors.black,)
                ),
                validator:  (valuename) {
                  if (valuename!.isEmpty ||
                      !RegExp(r'^[a-z A-Z]+$')
                          .hasMatch(valuename)) {
                    return 'Invalid name';
                  }
                  return null;
                },

                onSaved: (value1){
                  fname = value1!;
                },
              ),
              Container(),
              TextFormField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.all(5),
                    hintText: " Last name",
                  icon: Icon(Icons.person,color: Colors.black,)
                ),
                validator:  (valueurname) {
                  if (valueurname!.isEmpty ||
                      !RegExp(r'^[a-z A-Z]+$')
                          .hasMatch(valueurname)) {
                    return 'Invalid name';
                  }
                  return null;
                },
                onSaved: (value1){
                  lname = value1!;
                },
              ), Container(),
        TextFormField(
          decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.all(5),
              hintText: "phone",
            icon: Icon(Icons.phone,color: Colors.black,)
          ),
          validator:   (valuephone) {
            if (valuephone!.isEmpty) {
              return 'Enter  number';
            }
            if (valuephone.length <10){
              return 'Number minimum length is 10';
            }
            if(valuephone.length>13) {
              return 'The number must be 10 digit';
            }
            if (RegExp(
                r'^[0-9]+$').hasMatch(valuephone)){
              return null;
            }else{
              return 'Numbers only';}
          },
          onSaved: (value1){
            phone = value1!;
          },
        ),Container(),
        TextFormField(
          decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.all(5),
              hintText: "email",
            icon: Icon(Icons.email,color: Colors.black,)
          ),validator: (valuemail) {
          if (valuemail!.isEmpty) {
            return 'Invalid last name';
          }
          if (!RegExp(
              r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+.[a-zA-Z]+")
              .hasMatch(valuemail!)) {
            return 'Invalid email';
          }
          return null;
        },
          onSaved: (value1){
            mail = value1!;
          },
        ),
        Container(),
              TextFormField(

                decoration: InputDecoration(
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.all(5),
                    hintText: "password",
                  icon: Icon( Icons.lock_outline,color: Colors.black,),

                ),
                validator: (valuepassword) {
                  if (valuepassword!.isEmpty) {
                    return 'Enter your password';
                  }
                  if (valuepassword.length < 6) {
                    return 'Password must be more than 6 Letters';
                  }
                  if (valuepassword.length > 12) {
                    return 'Password must not be more than 12 Letters';
                  }
                  if (RegExp(
                      r'^(?=^.{6,}$)((?=.*\d)|(?=.*\W+))(?![.\n])(?=.*[A-Z])(?=.*[a-z]).*$')
                      .hasMatch(valuepassword)) {
                    return null;
                  } else {
                    return "Passsword should Contain atleast 1 symbol,Uppercase or number";
                  }
                },
                onSaved: (value1){
                  pass = value1!;
                },
              ),
              Container(),
           TextFormField(
          decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.all(5),
              hintText: "Confirm password",
              icon: Icon( Icons.lock_outline,color: Colors.black,)
          ),
             validator: (cpass){
             },
        ),

              SizedBox(),
              Container(
                height: 50,
                width: 150,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        shape: StadiumBorder()
                    ),
                    onPressed: (){
                  writedData();
                  if (_formkey.currentState!.validate()) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                HomePage()));
                  }
                }, child: Text("login")),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
