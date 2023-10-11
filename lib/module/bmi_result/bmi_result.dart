import 'package:flutter/material.dart';

class BmiResultScreen extends StatelessWidget {

  final double result;
  final int age;
  final bool isMale;

  BmiResultScreen({
   required this.result,
   required this.age,
   required this.isMale,
});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('BMI Result'),
      ),
      body: Container(
        decoration: BoxDecoration(color: Colors.black),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Gender: ${isMale? "Male":"Female"}',
              style: TextStyle(
                fontSize: 30.0,
                color: Colors.white,
                fontWeight: FontWeight.bold
              ),),
              Text('Result: $age',
              style: TextStyle(
                fontSize: 30.0,
                color: Colors.white,
                fontWeight: FontWeight.bold
              ),),
              Text('Age: $age',
              style: TextStyle(
                fontSize: 30.0,
                color: Colors.white,
                fontWeight: FontWeight.bold
              ),),
            ],
          ),
        ),
      ),
    );
  }
}
