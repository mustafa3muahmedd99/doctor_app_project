import 'package:flutter/material.dart';

class AvailableDoctor extends StatelessWidget {
  final String name;
  final String experience;
  final String patients;
  final String imagePath;
  final VoidCallback? onTap;

  const AvailableDoctor({
    required this.name,
    required this.experience,
    required this.patients,
    required this.imagePath,
    this.onTap,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      height: double.infinity,
      padding: EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 255, 255, 255),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: TextStyle(
                  color: const Color.fromARGB(255, 0, 0, 0),
                  fontSize: 17,
                ),
              ),
              Text(
                'Medicine Specialist',
                style: TextStyle(
                  color: const Color.fromARGB(255, 0, 0, 0),
                  fontSize: 15,
                ),
              ),
              Spacer(),
              Row(
                children: List.generate(5, (index) {
                  return Icon(
                    Icons.star,
                    color: Colors.yellow,
                    size: 15,
                  );
                }),
              ),
              Spacer(),
              Text(
                'Experience',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.grey[600],
                ),
              ),
              Text(
                experience,
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Spacer(),
              Text(
                'Patients',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.grey[600],
                ),
              ),
              Text(
                patients,
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Spacer(),
          Image.asset(imagePath),
        ],
      ),
    );
  }
}
