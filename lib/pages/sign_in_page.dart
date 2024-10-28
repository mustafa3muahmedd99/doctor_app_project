// ignore_for_file: body_might_complete_normally_nullable

import 'package:doctor/core/routes/routes_name.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatefulWidget {
  SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignInPage> {
  GlobalKey<FormState> formstate = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        //!appbar
        appBar: _appbar(context),
        //!body
        body: _body(context));
  }

  Form _body(BuildContext context) {
    return Form(
      key: formstate,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //! Email
              TextFormField(
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'This Field is required';
                  }
                  String emailPattern =
                      r'^[a-zA-Z0-9._%+-]+@[a-zA-Z]+\.[a-z]{3}$';
                  RegExp emailRegExp = RegExp(emailPattern);

                  if (!emailRegExp.hasMatch(value)) {
                    return 'Please enter a valid email';
                  }
                },
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                  labelText: 'Email*',
                ),
              ),
              SizedBox(height: 15),
              //! Password
              TextFormField(
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'This Field is required';
                  }
                },
                obscureText: true,
                decoration: const InputDecoration(
                  labelText: 'Password*',
                ),
              ),
              SizedBox(height: 15),
              TextButton(
                onPressed: () {},
                child: Text(
                  'Forgot Your Password?',
                  style: TextStyle(fontSize: 15, color: Colors.blue),
                ),
              ),
              SizedBox(height: 15),
              ElevatedButton(
                onPressed: () {
                  if (formstate.currentState!.validate()) {
                    Navigator.pushNamed(context, RoutesName.Home);
                  }
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Text(
                  'Sign In',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  AppBar _appbar(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      toolbarHeight: 100,
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Sign In',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 5),
          Row(
            children: [
              Text(
                "Don't have an account?",
                style: TextStyle(fontSize: 15),
              ),
              TextButton(
                onPressed: () =>
                    Navigator.pushNamed(context, RoutesName.SignUp),
                child: Text(
                  'Sign Up!',
                  style: TextStyle(fontSize: 15, color: Colors.blue),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
