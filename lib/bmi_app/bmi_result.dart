import 'package:bmi_app/app_theme.dart';
import 'package:flutter/material.dart';

class BMIResult extends StatefulWidget {
  static String routeName="/BMIResult";

  const BMIResult({super.key});

  @override
  State<BMIResult> createState() => _BMIResultState();
}

class _BMIResultState extends State<BMIResult> {
 var bmires;
late  String txt;
  late String longtxt;
  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    bmires=ModalRoute.of(context)!.settings!.arguments as double;
    txtResult();
  }
  @override
  void initState() {
    // TODO: implement initState

    super.initState();


  }
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        title: Text("BMI Calculator"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 24.0,),
            Text("Your Result",style: Theme.of(context).
            textTheme.headlineLarge,),
            SizedBox(height: 24.0,),
            Container(

              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.0),
                  color: AppTheme.lightblack
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 40.0
                ),
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                        Text(txt.toString(),
                          style: Theme.of(context).
                      textTheme.headlineMedium!.copyWith(
                          color: AppTheme.green,
                          fontSize: 40.0
                      ),),

                      SizedBox(height: 50.0,),
                      Text(bmires.toString().substring(0,4),style: Theme.of(context).
                      textTheme.headlineLarge,),
                      SizedBox(height: 50.0,),
                      Text(longtxt,
                          textAlign: TextAlign.center
                          ,style: Theme.of(context).
                      textTheme.headlineMedium,),
                    ],
                  ),
                ),
              ),
            ),
            Spacer(),
            ElevatedButton(
                style:ElevatedButton.styleFrom(
                    fixedSize: Size(MediaQuery.of(context).size.width, 50)
                ) ,
                onPressed: (){
                  double bmires1=bmires;
                }, child: Text("Re-Calculte"))
          ],
        ),
      ),
    );


}
void  txtResult(){
    if(bmires<18.5){
      txt="UnderWeight";
      longtxt="You have an UnderWeighted Weight\n you need to gain weight";
    }else if(bmires>18.5&&bmires<24.9){
      txt="Normal";
      longtxt="You have a Normal Weight\n Good Job!!";
    }else if(bmires>25&&bmires<29.9){

      txt="OverWeight";
      longtxt="You have an OverWeighted Weight\n you need to lose weight";
    }
    else if(bmires>30&&bmires<34.9){
      txt="Obese";
      longtxt="You have an Obese Weight\n you need to lose weight";
    }else{
      txt="Extremely Obese";
      longtxt="You have an Extremely Obese Weight\n you need to lose weight";
    }
setState(() {

});
  }
}
