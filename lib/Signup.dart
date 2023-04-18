import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class Signup extends StatefulWidget {
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              SizedBox(height: 200.0),
              Neumorphic(
                style: NeumorphicStyle(
                  depth: -8,
                  color: Colors.white,
                  boxShape: NeumorphicBoxShape.roundRect(
                    BorderRadius.circular(12),
                  ),
                ),
                child: TextField(
                  controller: _emailController,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                  decoration: InputDecoration(
                    labelText: 'Email',

                    filled: true,
                    fillColor: Colors.white,
                    labelStyle: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30.0),
              Neumorphic(
                style: NeumorphicStyle(
                  depth: -8,
                  color: Colors.white,
                  boxShape: NeumorphicBoxShape.roundRect(
                    BorderRadius.circular(12),
                  ),
                ),
                child: TextField(
                  controller: _passwordController,
                  obscureText: true,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                  decoration: InputDecoration(
                    labelText: 'Password',

                    filled: true,
                    fillColor: Colors.white,
                    labelStyle: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 130.0),
              Container(
                width: MediaQuery.of(context).size.width / 2, // set the width to half the screen width
                child: NeumorphicButton(
                  onPressed: () {},
                  style: NeumorphicStyle(
                    depth: 8,
                    color: Colors.black,
                    boxShape: NeumorphicBoxShape.roundRect(
                      BorderRadius.circular(12),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    child: Text(
                      'Sign Up',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 16.0),
              Text(
                'Already have an account?',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 8.0),
              GestureDetector(
                onTap: () {},
                child: Text(
                  'Log In',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}