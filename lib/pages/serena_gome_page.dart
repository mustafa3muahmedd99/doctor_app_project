import 'package:flutter/material.dart';

class SerenaGomePage extends StatelessWidget {
  SerenaGomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: appbar(), body: body());
  }

  SingleChildScrollView body() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
                'assets/images/doctor_big_preview.png'), // Replace with your image path
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildActionButton(Icons.call, 'Voice Call',
                    Color.fromARGB(255, 103, 185, 233), () {}),
                _buildActionButton(Icons.camera_alt_rounded, 'Video Call',
                    Color.fromARGB(255, 136, 104, 233), () {}),
                _buildActionButton(Icons.chat, 'Message',
                    Color.fromARGB(255, 230, 165, 106), () {}),
              ],
            ),
            SizedBox(height: 13),
            _buildDoctorInfo(),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 37, 94, 214),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Text(
                'Book An Appointment',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildActionButton(
      IconData icon, String title, Color color, VoidCallback onPressed) {
    return MaterialButton(
      onPressed: onPressed,
      height: 50,
      color: color,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Icon(icon, color: Colors.white, size: 15),
          SizedBox(width: 3),
          Text(title, style: TextStyle(color: Colors.white)),
        ],
      ),
    );
  }

  Widget _buildDoctorInfo() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Medicine & Heart Specialist'),
        Text('Good Health Clinic, MBBS, FCPS'),
        SizedBox(height: 5),
        Row(
          children: List.generate(5, (index) {
            return Icon(
              index < 4 ? Icons.star : Icons.star_half,
              color: Colors.yellow,
              size: 15,
            );
          }),
        ),
        SizedBox(height: 15),
        Text('About Serena',
            textAlign: TextAlign.start, style: TextStyle(fontSize: 18)),
        SizedBox(height: 10),
        Text(
            'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s.'),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _buildInfoColumn('Patient', '1.08K'),
            _buildInfoColumn('Experience', '8 Years'),
            _buildInfoColumn('Reviews', '2.05K'),
          ],
        ),
      ],
    );
  }

  Widget _buildInfoColumn(String title, String value) {
    return Column(
      children: [
        Text(title, style: TextStyle(fontSize: 15)),
        SizedBox(height: 5),
        Text(value,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
      ],
    );
  }
}

AppBar appbar() {
  return AppBar(
    title: Text('Dr. Serena Gome'),
  );
}
