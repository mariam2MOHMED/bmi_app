import 'dart:math';

import 'package:bmi_app/app_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'bmi_result.dart';

class BmiCalculator extends StatefulWidget {
  static String routeName="/BmiCalculator";
  const BmiCalculator({super.key});

  @override
  State<BmiCalculator> createState() => _BmiCalculatorState();
}

class _BmiCalculatorState extends State<BmiCalculator> {
  bool isMale=true;
  double height=180.0;
  int age=18;
  int weight=60;
  double bmires=0;
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      appBar: AppBar(
        title: Text("BMI Calculator"),
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          right: 20,
          left: 20.0,
          top: 20.0
        ),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: (){
                      isMale=true;
                      setState(() {

                      });
                    },
                    child: Container(

                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16.0),
                        color: isMale==true?AppTheme.chosen:
                        AppTheme.lightblack
                      ),
                      child: Padding(
                        padding:  EdgeInsets.symmetric(vertical: 30.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.male,size: 60.0,
                              color: Colors.white,),
                            SizedBox(height: 7.0,),
                            Text("Male",style:
                            Theme.of(context).textTheme.headlineMedium,)
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 20.0,),
                Expanded(
                  child: GestureDetector(
                    onTap: (){
                      isMale=false;
                      setState(() {

                      });
                    },
                    child: Container(

                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16.0),
                          color: isMale==false?AppTheme.chosen:
                          AppTheme.lightblack
                      ),
                      child: Padding(
                        padding:  EdgeInsets.symmetric(vertical: 30.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.female,size: 60.0,
                              color: Colors.white,),
                            SizedBox(height: 7.0,),
                            Text("Female",
                              style: Theme.of(context).textTheme.headlineMedium,)
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 24.0,),
            Container(

              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.0),
                  color: AppTheme.lightblack
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 30.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                        Text("Height",style: Theme.of(context).textTheme.headlineSmall,),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(height.toInt().toString(),style:
                        Theme.of(context).textTheme.headlineMedium!.copyWith(
                          fontSize: 40.0
                        ),),
                        Text(" cm",style: Theme.of(context).textTheme.headlineSmall)
                    ,
                      ],
                    ),
                    Slider(
                        min: 120.0,
                        max: 220.0,
                        activeColor: AppTheme.red,
                        thumbColor: AppTheme.red,
                        inactiveColor: Color(0xff4f5162),
                        value: height, onChanged: (value){
                      height=value;
                      print(height);
                      setState(() {

                      });
                    })
                  ],
                ),
              ),

            ),
            SizedBox(height: 24.0,),
            Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16.0),
                        color: AppTheme.lightblack
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20.0),
                      child: Column(
                        children: [
                          Text("Weight",style: Theme.of(context).textTheme.headlineSmall,),
                          SizedBox(height: 12.0,),
                          Text(weight.toString(),style:
                          Theme.of(context).textTheme
                              .headlineMedium!.copyWith(
                              fontSize: 40.0
                          ),),
                                        Row(
                      children: [
                        Expanded(
                          child: FloatingActionButton(onPressed: (){
                            setState(() {
                              weight++;
                            });
                          },child: Icon(Icons.add),),
                        ),
                        SizedBox(width: 12.0,),
                        Expanded(
                          child: FloatingActionButton(onPressed: (){
                            setState(() {
                              weight--;
                            });
                          },child: Icon(Icons.minimize),),
                        ),
                      ],
                                        )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 20.0,),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16.0),
                        color: AppTheme.lightblack
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20.0),
                      child: Column(
                        children: [
                          Text("Age",style: Theme.of(context).textTheme.headlineSmall,),
                          SizedBox(height: 12.0,),
                          Text(age.toString(),style:
                          Theme.of(context).textTheme
                              .headlineMedium!.copyWith(
                              fontSize: 40.0
                          ),),
                          Row(
                            children: [
                              Expanded(child: FloatingActionButton(onPressed:
                                  (){
                                setState(() {
                                  age++;
                                });
                                  },child: Icon(Icons.add),)),
                              SizedBox(width: 12.0,),
                              Expanded(child: FloatingActionButton(onPressed:
                                  (){
                                    setState(() {
                                      age--;
                                    });
                                  },child: Icon(Icons.minimize),)),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Spacer(),
            ElevatedButton(
                style:ElevatedButton.styleFrom(
                  fixedSize: Size(MediaQuery.of(context).size.width, 50)
                ) ,
                onPressed: (){

                    bmires=(weight)/pow(height/100,2);

                  Navigator.of(context).pushNamed(BMIResult.routeName,
                  arguments: bmires
                  );
                }, child: Text("Calculte"))
          ],
        ),
      ),
    );
  }
}
