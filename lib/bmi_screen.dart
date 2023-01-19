import 'dart:math';
import 'package:pmi_app/result_screen.dart';
import 'package:flutter/material.dart';

class BMIScreen extends StatefulWidget {
   BMIScreen({Key? key}) : super(key: key);

  @override
  State<BMIScreen> createState() => _BMIScreenState();
}

class _BMIScreenState extends State<BMIScreen> {
  bool isMale=true;
  double height=180;
  int age=25;
  int weight=75;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: const Text(
          "BMI CALCULATOR",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: (){
                        isMale=true;
                        setState(() {

                        });
                      },
                      child: Container(
                        height: 160,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color:isMale? Colors.blue:Color(0xff102952),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(
                              Icons.male,
                              color: Colors.white,
                              size: 80,
                            ),
                            Text("Male",style: TextStyle(
                              color: Colors.white,
                              fontSize: 20
                            ),),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10,),
                  Expanded(
                    child: InkWell(
                      onTap: (){
                        isMale=false;
                        setState(() {

                        });
                      },
                      child: Container(
                        height: 160,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color:isMale? Color(0xff102952):Colors.blue,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(
                              Icons.female,
                              color: Colors.white,
                              size: 80,
                            ),
                            Text("Female",style: TextStyle(
                              color: Colors.white,
                              fontSize: 20
                            ),),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20,),
              Container(
                height: 160,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xff102952),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:  [
                    const Text("Height",style: TextStyle(
                        color: Colors.white,
                        fontSize: 20
                    ),),
                    const SizedBox(height: 5,),
                     Text("${height.round()} cm",style:const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      fontWeight: FontWeight.bold
                    ),),
                    const SizedBox(height: 10,),
                    Slider(
                        value: height,
                        min: 70,
                        max: 250,
                        activeColor: Colors.blue,
                        inactiveColor: Colors.grey,
                        thumbColor: Colors.blue,
                        onChanged:(value){
                          height=value;
                          setState(() {

                          });
                        },
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 160,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xff102952),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text("Weight",style: TextStyle(
                              color: Colors.white,
                              fontSize: 20
                          ),),
                          const SizedBox(height: 5,),
                           Text("$weight",style:const TextStyle(
                              color: Colors.white,
                              fontSize: 20
                          ),),
                          const SizedBox(height: 5,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(onPressed: (){
                                weight--;
                                setState(() {

                                });
                              },mini: true, child: const Icon(Icons.remove)),
                              FloatingActionButton(onPressed: (){
                                weight++;
                                setState(() {

                                });
                              },mini: true, child: const Icon(Icons.add)),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 10,),
                  Expanded(
                    child: Container(
                      height: 160,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xff102952),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:  [
                          const  Text("Age",style: TextStyle(
                              color: Colors.white,
                              fontSize: 20
                          ),),
                          const  SizedBox(height: 5,),
                           Text("$age",style:const TextStyle(
                              color: Colors.white,
                              fontSize: 20
                          ),),
                          const SizedBox(height: 5,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(onPressed: (){
                                age--;
                                setState(() {

                                });
                              },mini: true, child: const Icon(Icons.remove)),
                              FloatingActionButton(onPressed: (){
                                age++;
                                setState(() {

                                });
                              },mini: true, child: const Icon(Icons.add)),
                            ],
                          ),

                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30,),
              InkWell(
                onTap: (){
                  double bmiResult=weight/pow(height, 2);
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ResultScreen(
                      age: age,
                      isMale: isMale,
                      bmi: bmiResult,
                  ),));

                },
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.blue,
                  ),
                  child:const Center(
                    child:  Text("CALCULATE",style: TextStyle(
                        color: Colors.white,
                        fontSize: 20
                    ),),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
