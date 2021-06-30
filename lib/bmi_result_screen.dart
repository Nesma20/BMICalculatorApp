import 'package:flutter/material.dart';

class BmiResultScreen extends StatelessWidget {
int result ;
bool isMale;
int age;
BmiResultScreen({
  required this.result,
  required this.isMale,
  required this.age
});

@override
  Widget build(BuildContext context) {
    int result = 0;
    return Scaffold(appBar: AppBar(
      leading: IconButton(icon: Icon(Icons.arrow_back_ios),
      onPressed: (){
        Navigator.pop(context);
      },),
      title: Text("BMI Result"),
    ),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Gender : ${isMale ? 'Male' : 'Female'}',style: TextStyle(
            fontSize: 25.0,
            fontWeight: FontWeight.bold
          ),),
          Text('Result : 22',style: TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.bold
          ),),
          Text('Age : 25',style: TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.bold
          ),),
        ],
      ),
    ),);
  }
}

