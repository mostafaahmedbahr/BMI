import 'package:flutter/material.dart';
class BMIResultScreen extends StatelessWidget {
  final int result;
  final bool isMale;
  final int age;

  const BMIResultScreen({
    @required this.result,
    @required this.isMale,
    @required this.age});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMIResult"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Gender : ${isMale?"MALE":"FEMALE"}",
              style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold),),
            Text("Age : $age",
              style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold),),
            Text("Result : $result",
              style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold),),
          ],
        ),
      ),
    );
  }
}
