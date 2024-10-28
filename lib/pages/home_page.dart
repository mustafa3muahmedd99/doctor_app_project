import 'package:doctor/core/routes/routes_name.dart';
import 'package:doctor/pages/appointment_page.dart';
import 'package:doctor/pages/doctors_page.dart';
import 'package:doctor/pages/profile_page.dart';
import 'package:doctor/widgets/available_doctor.dart';
import 'package:doctor/widgets/category.dart';
import 'package:doctor/widgets/custom_app_bar.dart';
import 'package:doctor/widgets/recommend_doctor.dart';
import 'package:doctor/widgets/section_title.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 80,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: GNav(
              gap: 6,
              onTabChange: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
              backgroundColor: Colors.white,
              tabBackgroundColor: Colors.blue,
              color: Colors.white,
              activeColor: Colors.white,
              padding: EdgeInsets.all(14),
              tabs: [
                GButton(
                  icon: Icons.home,
                  text: 'Home',
                  iconColor: Colors.black,
                ),
                GButton(
                  icon: Icons.people,
                  text: 'Doctors',
                  iconColor: Colors.black,
                ),
                GButton(
                  icon: Icons.calendar_today,
                  text: 'Appointment',
                  iconColor: Colors.black,
                ),
                GButton(
                  icon: Icons.person,
                  text: 'Profile',
                  iconColor: Colors.black,
                ),
              ]),
        ),
      ),
      body: IndexedStack(
        index: _selectedIndex,
        children: [
          HomeContent(),
          DoctorsPage(),
          AppointmentPage(),
          ProfilePage(),
        ],
      ),
    );
  }
}

class HomeContent extends StatefulWidget {
  @override
  _HomeContentState createState() => _HomeContentState();
}

class _HomeContentState extends State<HomeContent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appbar(),
      body: _body(context),
    );
  }

  AppBar _appbar() {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      toolbarHeight: 70,
      centerTitle: false,
      automaticallyImplyLeading: false,
      title: CustomAppBar(titleText: 'Find Your'),
    );
  }

  SingleChildScrollView _body(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 5),
            //! Recommend Doctors
            child: Container(
              height: 170,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  InkWell(
                    onTap: () {},
                    child: RecommendDoctor(
                      doctorName: 'Dr. Salina Zaman',
                      imagePath: 'assets/images/Salina_Zaman.png',
                    ),
                  ),
                  SizedBox(width: 10),
                  InkWell(
                    onTap: () =>
                        Navigator.pushNamed(context, RoutesName.Serena),
                    child: RecommendDoctor(
                      doctorName: 'Dr. Serena Gome',
                      imagePath: 'assets/images/serena.png',
                    ),
                  ),
                  SizedBox(width: 10),
                  InkWell(
                    onTap: () {},
                    child: RecommendDoctor(
                      doctorName: 'Dr. Asma Khan',
                      imagePath: 'assets/images/asma.png',
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SectionTitle(title: 'Categories', pressOnSeeAll: () {}),
                SizedBox(height: 15),
                //! Categories
                Container(
                  height: 90,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Category(
                        iconPath: 'assets/icons/Pediatrician.svg',
                        title: 'Pediatrician',
                      ),
                      SizedBox(width: 10),
                      Category(
                        iconPath: 'assets/icons/Neurosurgeon.svg',
                        title: 'Neurosurgeon',
                      ),
                      SizedBox(width: 10),
                      Category(
                        iconPath: 'assets/icons/Cardiologist.svg',
                        title: 'Cardiologist',
                      ),
                      SizedBox(width: 10),
                      Category(
                        iconPath: 'assets/icons/Psychiatrist.svg',
                        title: 'Psychiatrist',
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                SectionTitle(title: 'Available Doctors', pressOnSeeAll: () {}),
                SizedBox(height: 15),
                //! Available Doctors
                Container(
                  height: 200,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, RoutesName.Serena);
                        },
                        child: AvailableDoctor(
                          name: 'Dr. Serena Gome',
                          experience: '8 Years',
                          patients: '1.08K',
                          imagePath: 'assets/images/serena.png',
                        ),
                      ),
                      SizedBox(width: 10),
                      InkWell(
                        onTap: () {},
                        child: AvailableDoctor(
                          name: 'Dr. Asma Khan',
                          experience: '5 Years',
                          patients: '2.7K',
                          imagePath: 'assets/images/asma.png',
                        ),
                      ),
                      SizedBox(width: 10),
                      InkWell(
                        onTap: () {},
                        child: AvailableDoctor(
                          name: 'Dr. Kiran Shakia',
                          experience: '5 Years',
                          patients: '2.7K',
                          imagePath: 'assets/images/kiran.png',
                        ),
                      ),
                      SizedBox(width: 10),
                      InkWell(
                        onTap: () {},
                        child: AvailableDoctor(
                          name: 'Dr. Masuda Khan',
                          experience: '5 Years',
                          patients: '2.7K',
                          imagePath: 'assets/images/masuda.png',
                        ),
                      ),
                      SizedBox(width: 10),
                      InkWell(
                        onTap: () {},
                        child: AvailableDoctor(
                          name: 'Dr. Johir Raihan',
                          experience: '5 Years',
                          patients: '2.7K',
                          imagePath: 'assets/images/johir.png',
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
