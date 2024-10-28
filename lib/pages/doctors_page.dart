import 'package:doctor/core/routes/routes_name.dart';
import 'package:doctor/widgets/custom_app_bar.dart';
import 'package:doctor/widgets/doctor_card.dart';
import 'package:flutter/material.dart';

class DoctorsPage extends StatefulWidget {
  DoctorsPage({super.key});

  @override
  State<DoctorsPage> createState() => _DoctorsPageState();
}

class _DoctorsPageState extends State<DoctorsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar(),
      body: body(),
    );
  }

  Padding body() {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: GridView.count(
        crossAxisCount: 2,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        children: [
          DoctorCard(
            name: "Dr. Serena Gome",
            experience: '8 Years',
            patients: '1.08K',
            imagePath: "assets/images/serena.png",
            onTap: () {
              Navigator.pushNamed(context, RoutesName.Serena);
            },
          ),
          DoctorCard(
            name: "Dr. Asma Khan",
            experience: '5 Years',
            patients: '2.7KK',
            imagePath: "assets/images/asma.png",
            onTap: () {},
          ),
          DoctorCard(
            name: "Dr. Kiran Shakia",
            experience: '5 Years',
            patients: '2.7KK',
            imagePath: "assets/images/kiran.png",
            onTap: () {},
          ),
          DoctorCard(
            name: "Dr. Masuda Khan",
            experience: '5 Years',
            patients: '2.7KK',
            imagePath: "assets/images/masuda.png",
            onTap: () {},
          ),
          DoctorCard(
            name: "Dr. Johir Raihan",
            experience: '5 Years',
            patients: '2.7KK',
            imagePath: "assets/images/johir.png",
            onTap: () {},
          ),
        ],
      ),
    );
  }
}

AppBar appbar() {
  return AppBar(
    backgroundColor: Colors.transparent,
    elevation: 0,
    toolbarHeight: 70,
    centerTitle: false,
    automaticallyImplyLeading: false,
    title: CustomAppBar(titleText: 'Available'),
  );
}
