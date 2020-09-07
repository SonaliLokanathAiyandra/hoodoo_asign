import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hoodooasign/utilities/constants.dart';

import 'dashboard.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  void showToast(){
    Fluttertoast.showToast(
        msg:'Register',
        toastLength:Toast.LENGTH_SHORT,
        gravity:ToastGravity.CENTER,
        timeInSecForIos:1,
        backgroundColor:Colors.blueGrey,
        textColor:Colors.white
    );
  }
  Widget _buildEmailTF() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          decoration: kBoxDecorationStyle,
          alignment: Alignment.centerLeft,
          height: 50.0,
          child: TextField(
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(
              color: Colors.black,
              fontFamily: 'Roboto-Medium.ttf',
            ),
            decoration: InputDecoration(
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0),
                  borderSide: BorderSide(
                    color: Colors.grey,
                    style: BorderStyle.solid,
                  )
              ),
              contentPadding: EdgeInsets.only(top: 15.0),
              prefixIcon: Icon(
                Icons.email,
                color: Colors.grey,
                size: 18,
              ),
              hintText: 'Email',
              hintStyle: kHintTextStyle,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildPasswordTF() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          alignment: Alignment.centerLeft,
          decoration: kBoxDecorationStyle,
          height: 50.0,
          child: TextField(
            obscureText: true,
            style: TextStyle(
              color: Colors.black,
              fontFamily: 'Roboto-Medium.ttf',
            ),
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5.0),
                borderSide: BorderSide(
                  color: Colors.grey,
                  style: BorderStyle.solid,
                )
              ),
              contentPadding: EdgeInsets.fromLTRB(0.0,15.0,0.0,10.0),
              prefixIcon: Icon(
                Icons.person,
                color: Colors.grey,
                size: 18.0,
              ),
              hintText: 'Password',
              hintStyle: kHintTextStyle,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildForgotPasswordBtn() {
    return Container(
      alignment: Alignment.center,
      child: FlatButton(
        onPressed: showToast,
        padding: EdgeInsets.only(right: 0.0),
        child: Text(
          'New to hoodoo? Register here',
          style: fLabelStyle,
        ),
      ),
    );
  }



  Widget _buildLoginBtn() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 15.0),
      width: double.infinity,
      child: RaisedButton(
        elevation: 5.0,
        onPressed: () {
          Navigator.push(context, MaterialPageRoute
            (builder: (context)=>Dashboard()),
          );
        },        padding: EdgeInsets.all(15.0),
        color: Colors.blueGrey,
        child: Text(
          'Sign In',
          style: TextStyle(
            color: Colors.white,
            letterSpacing: 1.5,
            fontSize: 16.0,
            fontWeight: FontWeight.normal,
            fontFamily: 'Roboto-Medium.ttf',
          ),
        ),
      ),
    );
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
            children: <Widget>[
              Container(
                height: double.infinity,
                child: SingleChildScrollView(
                  physics: AlwaysScrollableScrollPhysics(),
                  padding: EdgeInsets.symmetric(
                    horizontal: 40.0,
                    vertical: 190.0,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Center(
                        child: Image.asset('assets/logo.png',width: 50.0,height: 15.0),),
                      SizedBox(height: 15),
                      Text(
                        'Login now to proceed',
                        style: TextStyle(
                          color: Colors.blueGrey,
                          fontFamily: 'Roboto-Medium.ttf',
                          letterSpacing: 1.0,
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 20.0),
                      _buildEmailTF(),
                      SizedBox(
                        height: 15.0,
                      ),
                      _buildPasswordTF(),
                      _buildLoginBtn(),
                      _buildForgotPasswordBtn(),
                    ],
                  ),
                ),
              )
            ],
          ),
    );
  }
}
