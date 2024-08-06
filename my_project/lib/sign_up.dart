import 'package:flutter/material.dart';


bool _isPasswordHidden = true;

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
      ),
      body: Column(
        children: [
        Center(
        child: Image.asset(
          'image/Instagram_logo.svg.png',
          width: 160,
        ),
      ),
      SizedBox(height: 5),
      ElevatedButton(
      style: ElevatedButton.styleFrom(
      maximumSize: Size(320, 50), backgroundColor: Colors.blue, 
      shape: RoundedRectangleBorder( 
      borderRadius: BorderRadius.circular(10),
        ),
      ),
       onPressed: () {},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('image/pacepng.png', width: 20,),
          Text(" Log in  with Facebook" ,style: TextStyle(color: Colors.white),)
        ],
      ),
      ),
        Container(
        margin: const EdgeInsets.fromLTRB(0, 5, 0, 0),
        child: Text("______________________ OR ______________________",style: TextStyle(color: Colors.grey),),),
          Container(
          margin: EdgeInsets.fromLTRB(20, 10, 20, 0),
          child:  TextField(
         decoration: InputDecoration(
         border: OutlineInputBorder(),
         hintText: 'Mobile Number or Email',
          ),
         ),
        ),
        Container(
          margin: EdgeInsets.fromLTRB(20, 10, 20, 0),
          child:  TextField(
         decoration: InputDecoration(
         border: OutlineInputBorder(),
         hintText: 'Full Name',
          ),
         ),
        ),
        Container(
          margin: EdgeInsets.fromLTRB(20, 10, 20, 0),
          child:  TextField(
         decoration: InputDecoration(
         border: OutlineInputBorder(),
         hintText: 'Username',
          ),
         ),
        ),
        Container(
          margin: EdgeInsets.fromLTRB(20, 10, 20, 5),
          child:  TextField(
         decoration: InputDecoration(
         border: OutlineInputBorder(),
         hintText: 'Password',
          ),
         ),
        ),
      ElevatedButton(
      style: ElevatedButton.styleFrom(
      maximumSize: Size(320, 50), backgroundColor: Colors.blue, 
      shape: RoundedRectangleBorder( 
      borderRadius: BorderRadius.circular(10),
        ),
      ),
       onPressed: () {},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Sign Up" ,style: TextStyle(color: Colors.white),)
        ],
      ),
      ),
      Container(
        margin: EdgeInsets.fromLTRB(50, 15, 50, 0),
     child: Text(
          'By Signing up, you agree to our Terms, Data Policy and Cookies Policy.',
          style: TextStyle(
            fontSize: 15, color: Colors.grey
          ),
          textAlign: TextAlign.center,
        ),
      ),
        ],
      ),
    );
  }
}
