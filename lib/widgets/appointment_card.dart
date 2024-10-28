import 'package:flutter/material.dart';

class AppointmentCard extends StatelessWidget {
  final String date;
  final String time;
  final String doctor;
  final String type;
  final String place;

  const AppointmentCard({
    Key? key,
    required this.date,
    required this.time,
    required this.doctor,
    required this.type,
    required this.place,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 15),
        Container(
          width: double.infinity,
          height: 160,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
          ),
          padding: EdgeInsets.all(15),
          margin: EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buildDetailText("Date", date),
                  _buildDetailText("Time", time),
                  _buildDetailText("Doctor", doctor),
                ],
              ),
              Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buildDetailText("Type", type),
                  _buildDetailText("Place", place),
                  _buildCancelButton(),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildDetailText(String label, String value) {
    return Text.rich(
      TextSpan(
        text: "$label\n",
        children: [
          TextSpan(
            text: value,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }

  Widget _buildCancelButton() {
    return MaterialButton(
      onPressed: () {},
      color: Colors.red,
      textColor: Colors.white,
      padding: EdgeInsets.all(8),
      minWidth: 100,
      height: 50,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Text(
        'Cancel',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 14,
        ),
      ),
    );
  }
}
