// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:my_project/sign_up.dart';
import 'package:my_project/widget/my_button.dart';
import 'package:my_project/widget/my_text_field.dart';
import 'package:my_project/widget/mycolors.dart';


bool _isPasswordHidden = true;

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(children: [
        SizedBox(height: 20),
        Center(
        child: Image.asset(
          'image/Instagram_logo.svg.png',
          width: 200,
        ),
      ),
        Container(
          margin: EdgeInsets.all(10),
          child:  TextField(
         decoration: InputDecoration(
         border: OutlineInputBorder(),
         hintText: 'Phone number,email or username',
          ),
         ),
        ),
        Container(  
          margin: EdgeInsets.all(10),
          child: TextField(
         obscureText: _isPasswordHidden,
         decoration: InputDecoration(
         border: OutlineInputBorder(),
         hintText: 'Password',
         suffixIcon: IconButton(
        icon: Icon(
          _isPasswordHidden ? Icons.visibility : Icons.visibility_off,
        ),
        onPressed: () {
          setState(() {
            _isPasswordHidden = !_isPasswordHidden;
          });
          },
        ),
       ),
      ),
    ),
      Container(
        width: double.infinity,
        alignment: Alignment.centerRight,
        margin: const EdgeInsets.fromLTRB(0, 0, 10, 0),
        child: InkWell(
          child: TextButton(onPressed: () {}, child: Text("Forgotten Password ?", style: TextStyle(color: Colors.blue),)),
          onTap: () {},
        ),
      ),
      ElevatedButton(
      style: ElevatedButton.styleFrom(
      minimumSize: Size(340, 40), backgroundColor: Colors.blue, 
      shape: RoundedRectangleBorder( 
      borderRadius: BorderRadius.circular(10),
    ),
  ),
  onPressed: () {},
  child: Text("Log in",style: TextStyle(color: Colors.white),),
),
      Container(
        margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
        child: Text("________________________ or ________________________",style: TextStyle(color: Colors.blueGrey),),),
      Row(
      mainAxisAlignment: MainAxisAlignment.center,
       children: [
        Image.asset('image/face.png',width: 20,),
       TextButton(onPressed: () {}, child: Text("Continue with Facebook", style: TextStyle(color: Colors.blue),)),
      ],
      ),
      Expanded(child: Container()),
      Row(
      mainAxisAlignment: MainAxisAlignment.center,
       children: [
       Text("Don't have account? "),
       TextButton(onPressed: () { Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignUpPage()),
                  );}, child: Text("Sign up",style: TextStyle(color: Colors.blue),)),
      ],
      )
     ],
     ),
    );
  }
}