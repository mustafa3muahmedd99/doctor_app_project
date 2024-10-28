import 'package:doctor/core/routes/routes_name.dart';
import 'package:doctor/widgets/profile.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar(context),
      body: body(),
    );
  }

  SingleChildScrollView body() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(13.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/user_pic.png'),
            SizedBox(height: 20),
            Profile(hintText: 'Name',controller: TextEditingController(text: 'Anwar Abir'),
            ),
            SizedBox(height: 15),
            Profile(hintText: 'Email', controller: TextEditingController(text: 'test@gmail.com')),
            SizedBox(height: 15),
            Profile(hintText: 'Phone Number',controller: TextEditingController(text: '0100000000')),
            SizedBox(height: 15),
            Profile(hintText: 'Password',controller: TextEditingController(text: 'Rampura,Banasree')),
          ],
        ),
      ),
    );
  }

  AppBar appbar(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      title: Text('Profile'),
      actions: [
        IconButton(
          icon: Icon(
            Icons.settings,
            color: const Color.fromARGB(255, 19, 2, 255),
          ),
          onPressed: () {
            Navigator.pushNamed(context, RoutesName.Setting);
          },
        ),
      ],
    );
  }
}
