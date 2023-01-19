import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({
    Key? key,
    required this.age,
    required this.isMale,
    required this.bmi,
  }) : super(key: key);
  final bool isMale;
  final int age;
  final double bmi;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 160,
             padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color:Color(0xff102952),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children:  [

                Row(
                  children: [
                    const Text("Gender  :- ",style: TextStyle(
                        color: Colors.white,
                        fontSize: 20
                    ),),
                    Text(isMale?"Male":"Female",
                      style:const  TextStyle(
                        color: Colors.white,
                        fontSize: 20
                    ),),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  children:[
                    const Text("Age  :- ",style: TextStyle(
                        color: Colors.white,
                        fontSize: 20
                    ),),
                    Text("$age",
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20
                    ),),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    const  Text("result  :- ",style: TextStyle(
                        color: Colors.white,
                        fontSize: 20
                    ),),
                    Text("$bmi",
                      style:const TextStyle(
                        color: Colors.white,
                        fontSize: 20
                    ),),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),

    );
  }
}
