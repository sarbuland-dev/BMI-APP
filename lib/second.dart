import 'package:flutter/material.dart';



class Secondpage extends StatefulWidget {
  final double bmi;

  const Secondpage({
    super.key,
    required this.bmi,
});

  @override
  State<Secondpage> createState() {return MyAppState();}
}

class MyAppState extends State<Secondpage> {
  double height=100;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black87,
          leading: const Icon(
            Icons.calculate,
            color: Color(0xffb2e84d),
            size: 40,
          ),
          title: const Text(
            'BMI Calculator',
            style: TextStyle(color: Colors.white),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.settings, color: Colors.white),
            )
          ],
        ),
        body: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                margin: const EdgeInsets.all(5),
                child: const Text(
                  'Result',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 30,
                  ),
                ),
              ),
            ),
            Container(
              height: 200,
              width: double.infinity,
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Color(0xff2a3d17),),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:  [
                      Text(

                        'Your BMI is ',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        widget.bmi < 18.5 ? 'Underweight' :
                        widget.bmi < 25 ? 'Normal' :
                        widget.bmi < 30 ? 'Overweight' : 'Obese',
                        style: TextStyle(
                          fontSize: 20,
                          color: Color(0xffb2e84d),
                        ),
                      ),

                    ],
                  ),
                  SizedBox(height: 30,width: double.infinity,),
                  Text('${widget.bmi.toStringAsFixed(1)}',style: TextStyle(fontWeight:FontWeight.w600,fontSize: 50,color: Colors.white),),
                  Slider(value:widget.bmi,thumbColor: Color(0xffb2e84d),activeColor: Color(0xff395220),min: 1,max: 220, onChanged: (value){
                    setState(() {
                      widget.bmi;
                    });
                  }),





                ],
              ),
            ),
            Container(

              height: 200,
              width: double.infinity,
              margin: EdgeInsets.all(5),
              padding: EdgeInsets.all(5),

              decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: Colors.black,),
              child:widget.bmi<18.5?RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'UnderWeight\n\n',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                    TextSpan(
                      text: 'Diet and Nutrition\n\n',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Colors.white),
                    ),
                    TextSpan(
                      text: 'Eat More Calories:\n',
                      style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.white),
                    ),
                    TextSpan(
                      text: '• Consume more high-calorie foods like nuts, avocados, and healthy oils\n',
                      style: TextStyle(fontSize: 13, color: Colors.white),
                    ),
                    TextSpan(
                      text: '• Increase portion sizes during meals.\n\n',
                      style: TextStyle(fontSize: 13, color: Colors.white),
                    ),
                    TextSpan(
                      text: 'Choose Nutrient-Rich Foods:\n',
                      style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.white),
                    ),
                    TextSpan(
                      text: '• Focus on foods rich in protein (lean meats, fish, eggs, legumes).\n',
                      style: TextStyle(fontSize: 13, color: Colors.white),
                    ),
                    TextSpan(
                      text: '• Include complex carbohydrates (whole grains, sweet potatoes) for sustained energy.\n',
                      style: TextStyle(fontSize: 13, color: Colors.white),
                    ),
                    TextSpan(
                      text: '• Eat plenty of fruits and vegetables for balanced nutrition.\n',
                      style: TextStyle(fontSize: 13, color: Colors.white),
                    ),
                  ],
                ),

              ):widget.bmi< 25 ?RichText(
                text: TextSpan(
                  children: [
                    TextSpan(text: 'Normal\n\n', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white)),
                    TextSpan(text: 'Diet and Nutrition\n\n', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Colors.white)),
                    TextSpan(text: 'Maintain Balanced Diet:\n', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.white)),
                    TextSpan(text: '• Eat a variety of fruits, vegetables, whole grains, and lean proteins.\n', style: TextStyle(fontSize: 13, color: Colors.white)),
                    TextSpan(text: '• Avoid excessive junk food and sugary drinks.\n\n', style: TextStyle(fontSize: 13, color: Colors.white)),
                    TextSpan(text: 'Stay Active:\n', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.white)),
                    TextSpan(text: '• Exercise at least 30 minutes daily.\n', style: TextStyle(fontSize: 13, color: Colors.white)),
                    TextSpan(text: '• Include both cardio and strength training.\n', style: TextStyle(fontSize: 13, color: Colors.white)),
                    TextSpan(text: '• Stay hydrated and get enough sleep.\n', style: TextStyle(fontSize: 13, color: Colors.white)),
                  ],
                ),
              ):widget.bmi < 30 ?RichText(
                text: TextSpan(
                  children: [
                    TextSpan(text: 'Overweight\n\n', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white)),
                    TextSpan(text: 'Diet and Nutrition\n\n', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Colors.white)),
                    TextSpan(text: 'Reduce Calorie Intake:\n', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.white)),
                    TextSpan(text: '• Avoid sugary drinks, fast food, and processed snacks.\n', style: TextStyle(fontSize: 13, color: Colors.white)),
                    TextSpan(text: '• Eat smaller portion sizes throughout the day.\n\n', style: TextStyle(fontSize: 13, color: Colors.white)),
                    TextSpan(text: 'Healthy Food Choices:\n', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.white)),
                    TextSpan(text: '• Increase fiber intake with vegetables, fruits, and legumes.\n', style: TextStyle(fontSize: 13, color: Colors.white)),
                    TextSpan(text: '• Choose lean proteins like chicken, fish, and tofu.\n', style: TextStyle(fontSize: 13, color: Colors.white)),
                    TextSpan(text: '• Drink plenty of water before meals.\n', style: TextStyle(fontSize: 13, color: Colors.white)),
                  ],
                ),
              ):RichText(
                text: TextSpan(
                  children: [
                    TextSpan(text: 'Obese\n\n', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white)),
                    TextSpan(text: 'Diet and Nutrition\n\n', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Colors.white)),
                    TextSpan(text: 'Strict Diet Control:\n', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.white)),
                    TextSpan(text: '• Completely avoid junk food, sugary drinks, and fried foods.\n', style: TextStyle(fontSize: 13, color: Colors.white)),
                    TextSpan(text: '• Follow a structured meal plan with controlled calories.\n\n', style: TextStyle(fontSize: 13, color: Colors.white)),
                    TextSpan(text: 'Medical Advice:\n', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.white)),
                    TextSpan(text: '• Consult a doctor or nutritionist for a proper diet plan.\n', style: TextStyle(fontSize: 13, color: Colors.white)),
                    TextSpan(text: '• Consider supervised exercise programs.\n', style: TextStyle(fontSize: 13, color: Colors.white)),
                    TextSpan(text: '• Monitor health conditions like blood pressure and sugar regularly.\n', style: TextStyle(fontSize: 13, color: Colors.white)),
                  ],
                ),
              ),


            ),




            Container(
              height: 100,
              width: double.infinity,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
              margin: EdgeInsets.all(10),
              child: FloatingActionButton(onPressed: (){
                Navigator.pop(context);
              },backgroundColor:Color(0xffb2e84d) ,child:
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Re-Calulate',style: TextStyle(fontSize: 30,fontWeight: FontWeight.w400 )
                    )],
                )


                ,),


            )



            // SingleChildScrollView(
            //   scrollDirection: Axis.horizontal,
            //   child:Container(
            //     height: 20,
            //     width: double.infinity,
            //     margin: EdgeInsets.all(10),
            //     padding: EdgeInsets.all(5),
            //     color: Colors.deepOrange,
            //
            //
            //
            //   ) ,
            // )





          ],
        ),
      );

  }
}















