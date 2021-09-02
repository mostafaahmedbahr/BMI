import 'dart:math';

import 'package:flutter/material.dart';

import 'bmiresultscreen.dart';
class BMIScreen extends StatefulWidget {
  @override
  _BMIScreenState createState() => _BMIScreenState();
}

class _BMIScreenState extends State<BMIScreen> {
  double height=150;
  bool isMale=true;
  int weight=50;
  int age=25;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI Screen"),
      ),
      body: Column(
        children: [
          Expanded(
            child:Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          isMale=true;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: isMale?Colors.grey[500]:Colors.white,
                        ),
                        child: Column(children: [
                          Container(
                            height: 110,
                            width: 110,
                            child: Image(
                              image:AssetImage("assets/images/2.jpg"),
                            ),
                          ),
                          Text("MALE",style: TextStyle(fontSize: 25,),
                          ),
                        ],),
                      ),
                    ),
                  ),
                  SizedBox(width: 20,),
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          isMale=false;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: !isMale?Colors.yellow:Colors.white,
                        ),
                        child: Column(children: [
                          Container(
                            height: 110,
                            width: 110,
                            child: Image(
                              image:AssetImage("assets/images/3.jpg"),
                            ),
                          ),
                          Text("FEMALE",style: TextStyle(fontSize: 25,),
                          ),
                        ],),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(right:20.0,left: 20),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.green,
                ),
                child: Column(
                  children: [
                    SizedBox(height: 10,),
                    Text("HEIGHT",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text("${height.round()}",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),
                        ),
                        Text("cm",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Slider(
                        value: height,
                        min: 50,
                        max: 250,
                        onChanged:(value){
                         setState(() {
                           height=value;
                         });
                        }
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child:Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.purple,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                        Text("Weight",
                          style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,),),
                        Text("$weight",
                          style: TextStyle(fontWeight: FontWeight.bold,fontSize: 50,),),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                             FloatingActionButton(
                                 onPressed: (){
                                   setState(() {
                                     weight++;
                                   });
                                 },
                               heroTag: "1",
                               mini: true,
                               child: Icon(Icons.add),
                             ),
                            FloatingActionButton(
                              onPressed: (){
                                setState(() {
                                  weight--;
                                });
                              },
                              heroTag: "2",
                              mini: true,
                              child: Icon(Icons.remove),
                            ),
                          ],
                        ),
                      ],),
                    ),
                  ),
                  SizedBox(width: 20,),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.brown,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Age",
                            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,),),
                          Text("$age",
                            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 50,),),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                onPressed: (){
                                  setState(() {
                                    age++;
                                  });
                                },
                                heroTag: "3",
                                mini: true,
                                child: Icon(Icons.add),
                              ),
                              FloatingActionButton(
                                onPressed: (){
                                  setState(() {
                                    age--;
                                  });
                                },
                                heroTag: "4",
                                mini: true,
                                child: Icon(Icons.remove),
                              ),
                            ],
                          ),
                        ],),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            color: Colors.red,
            width: double.infinity,
            child: MaterialButton(
              height: 60,
                onPressed: (){
                var result=weight/pow((height/100),2);
                print(result.round());
                Navigator.push(context,
                    MaterialPageRoute(
                      builder: (context)=>BMIResultScreen(
                        result: result.round(),
                        age: age,
                        isMale: isMale,
                      ),
                    ),
                );
                },
              child: Text("CalCulate",
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                ),
              ),
                ),
          ),
        ],
      ),
    );
  }
}
