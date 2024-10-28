import 'package:doctor/widgets/appointment_card.dart';
import 'package:flutter/material.dart';

class AppointmentPage extends StatelessWidget {
  AppointmentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar(),
      body: body(),
    );
  }

  AppointmentCard body() {
    return AppointmentCard(
      date: '21/5/2024',
      time: '10:30 PM',
      doctor: 'Dr. Serena Gome',
      type: 'Dentist',
      place: 'City Clinic',
    );
  }
}

AppBar appbar() {
  return AppBar(
    automaticallyImplyLeading: false,
    centerTitle: true,
    toolbarHeight: 50,
    title: Text('My Appointment'),
  );
}
