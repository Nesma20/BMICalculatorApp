import 'dart:math';

import 'package:bmi_calculator_app/bmi_result_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BMIScreen extends StatefulWidget {
  const BMIScreen({Key? key}) : super(key: key);

  @override
  _BMIScreenState createState() => _BMIScreenState();
}

class _BMIScreenState extends State<BMIScreen> {
  bool isMale = true;
  double height = 120;
  int age = 20;

  int weight = 40;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI Calculator"),
      ),
      body: Column(
        children: [
          Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            isMale = true;
                          });
                        },
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image(image: AssetImage('assets/images/male.png')
                                , height: 90.0, width: 90.0,),
                              // Icon(
                              //   Icons.male_outlined,
                              //   size: 70.0,
                              // ),
                              SizedBox(
                                height: 15.0,
                              ),
                              Text(
                                'MALE',
                                style: TextStyle(
                                    fontSize: 25.0,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadiusDirectional.circular(
                                  10.0),
                              color: isMale ? Colors.blue : Colors.grey[400]),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            isMale = false;
                          });
                        },
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image(
                                image: AssetImage('assets/images/female.png')
                                , height: 90.0, width: 90.0,),
                              SizedBox(
                                height: 15.0,
                              ),
                              Text(
                                'FEMALE',
                                style: TextStyle(
                                    fontSize: 25.0,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadiusDirectional.circular(
                                  10.0),
                              color: isMale ? Colors.grey[400] : Colors.blue),
                        ),
                      ),
                    )
                  ],
                ),
              )),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'HEIGHT',
                      style: TextStyle(
                          fontSize: 25.0, fontWeight: FontWeight.bold),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      mainAxisAlignment: MainAxisAlignment.center,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          '${height.round()}',
                          style: TextStyle(
                            fontSize: 40.0,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        Text(
                          'CM',
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ],
                    ),
                    Slider(
                        value: height,
                        max: 180,
                        min: 80,
                        onChanged: (value) {
                          setState(() {});
                          height = value;
                          print(value);
                        })
                  ],
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadiusDirectional.circular(10.0),
                    color: Colors.grey[400]),
              ),
            ),
          ),
          Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'WEIGHT',
                              style:
                              TextStyle(
                                  fontSize: 25.0, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              '${weight}',
                              style: TextStyle(
                                fontSize: 40.0,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(onPressed: () {
                                  setState(() {
                                    weight--;
                                  });
                                },
                                  child: Icon(Icons.remove),
                                  mini: true,
                                  heroTag: 'weight-',
                                ),
                                FloatingActionButton(onPressed: () {
                                  setState(() {
                                    weight++;
                                  });
                                },
                                  child: Icon(Icons.add),
                                  mini: true,
                                  heroTag: 'weight+',
                                ),
                              ],
                            )
                          ],
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadiusDirectional.circular(
                                10.0),
                            color: Colors.grey[400]),
                      ),
                    ),
                    SizedBox(width: 20,),
                    Expanded(
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'AGE',
                              style:
                              TextStyle(
                                  fontSize: 25.0, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              '${age}',
                              style: TextStyle(
                                fontSize: 40.0,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(onPressed: () {
                                  setState(() {
                                    age--;
                                  });
                                },
                                  child: Icon(Icons.remove),
                                  mini: true,
                              heroTag: 'age-',
                            ),
                                FloatingActionButton(onPressed: () {
                                  setState(() {
                                    age++;
                                  });
                                },
                                  child: Icon(Icons.add),
                                  mini: true,
                                  heroTag: 'age+',
                                ),
                              ],
                            )
                          ],
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadiusDirectional.circular(
                                10.0),
                            color: Colors.grey[400]),
                      ),
                    ),
                  ],
                ),
              )),
          Container(
            width: double.infinity,
            color: Colors.blue,
            child: MaterialButton(
              height: 50.0,
              onPressed: () {
                double result = weight / pow(height / 100, 2);
                print(result.round());
                Navigator.push(context,
                    MaterialPageRoute(
                        builder: (context)=> BmiResultScreen(result: result.round(),isMale: isMale,age: age,)
                ));
              },
              child: Text(
                "CALCULATE",
                style: TextStyle(color: Colors.white),
              ),
            ),
          )
        ],
      ),
    );
  }
}
