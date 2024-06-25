import 'package:flutter/material.dart';

class BmiResultScreen extends StatelessWidget
{
  final int result;
  final bool isMale;
  final int age;

  BmiResultScreen(
  {
    required this.result,
    required this.isMale,
    required this.age,

  });


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'BMI Result',
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:
          [
            Text(
            'Gender : ${isMale ? 'Male' : 'Female'}',
            style: TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
            ),
          ),
            const SizedBox(
              height: 20.0,
            ),
            Text(
              'Age : ${age}',
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Text(
              'Result : ${result} kg/m2',
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            ),


          ],
        ),
      ),
    );
  }
}
