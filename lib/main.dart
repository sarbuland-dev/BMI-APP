import 'package:flutter/material.dart';
import 'package:practise/second.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double height=190;
  int weight=65;
  int age=20;
  String Unit='Cm';
  double bmiheight=0;
  double? bmi;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black87,
        leading: Icon(Icons.calculate,color: Color(0xffb2e84d),size: 40,),
        title: Text('BMI Calculator',style: TextStyle(color: Colors.white)),
        actions: [
          IconButton(onPressed: (){}, icon:Icon(Icons.settings,color: Colors.white,))
        ],
      ),
      body:Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: (){},
                  child: Container(
                    height: 120,
                    width: 170,
                    margin: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xff2a3d17),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.male, size: 30, color: Color(0xffb2e84d)),
                        SizedBox(height: 20),
                        Text('MALE', style: TextStyle(fontSize: 20, fontWeight: FontWeight(20), color: Colors.white)),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 120,
                  width: 170,
                  margin: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xff2a3d17),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.female, size: 30, color: Color(0xffb2e84d)),
                      SizedBox(height: 20),
                      Text('FEMALE', style: TextStyle(fontSize: 20, fontWeight: FontWeight(20), color: Colors.white)),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              height: 200,
              width: double.infinity,
              margin: EdgeInsets.all(5),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(0xff2a3d17),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Height',style: TextStyle(fontWeight:FontWeight(10),fontSize: 20,color: Colors.white)),
                      Row(
                        children: [
                          Container(
                            height: 30,
                            width: 30,
                            margin: EdgeInsets.all(5),
                            decoration: BoxDecoration(shape: BoxShape.circle,color: Color(0xffb2e84d),border: Border.all(color: Colors.black)),
                            child: FloatingActionButton(
                                onPressed: (){ setState(() { Unit='In'; }); },
                                backgroundColor: Color(0xffb2e84d),
                                child: Align(alignment: AlignmentGeometry.center, child: Text('In',style: TextStyle(fontSize: 15)))),
                          ),
                          Container(
                            height: 30,
                            width: 30,
                            margin: EdgeInsets.all(5),
                            decoration: BoxDecoration(shape: BoxShape.circle,color: Color(0xffb2e84d),border: Border.all(color: Colors.black)),
                            child: FloatingActionButton(
                                onPressed: (){ setState(() { Unit='Ft'; }); },
                                backgroundColor: Color(0xffb2e84d),
                                child: Align(alignment: AlignmentGeometry.center, child: Text('Ft',style: TextStyle(fontSize: 15)))),
                          ),
                          Container(
                            height: 30,
                            width: 30,
                            margin: EdgeInsets.all(5),
                            decoration: BoxDecoration(shape: BoxShape.circle,color: Color(0xffb2e84d),border: Border.all(color: Colors.black)),
                            child: FloatingActionButton(
                                onPressed: (){ setState(() { Unit='Cm'; }); },
                                backgroundColor: Color(0xffb2e84d),
                                child: Align(alignment: AlignmentGeometry.center, child: Text('Cm',style: TextStyle(fontSize: 15)))),
                          ),
                        ],
                      )
                    ],
                  ),
                  Text(
                      height.round().toString(),
                      style: TextStyle(fontSize: 60,color: Colors.white,fontWeight: FontWeight(60))),
                  Slider(
                      value: height,max: 250,min: 100,
                      activeColor: Color(0xff395220),
                      inactiveColor:Colors.black26,
                      thumbColor: Color(0xffb2e84d),
                      onChanged: (value) { setState(() { height=value; }); })
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 120,
                  width: 170,
                  margin: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xff2a3d17),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Weight',style: TextStyle(fontWeight: FontWeight(25),fontSize: 15,color: Colors.white)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          FloatingActionButton(
                            onPressed: () { setState(() { if(weight>0) weight--; }); },
                            backgroundColor: Color(0xffb2e84d),
                            mini: true,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                            child: Icon(Icons.remove, size: 20, color: Colors.black),
                          ),
                          Text('$weight',style: TextStyle(fontSize: 30,fontWeight: FontWeight(40),color: Colors.white)),
                          FloatingActionButton(
                            onPressed: () { setState(() { if(weight<300) weight++; }); },
                            backgroundColor: Color(0xffb2e84d),
                            mini: true,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                            child: Icon(Icons.add, size: 20, color: Colors.black),
                          ),
                        ],
                      ),
                      Text('kg',style: TextStyle(color: Colors.white)),
                    ],
                  ),
                ),
                Container(
                  height: 120,
                  width: 170,
                  margin: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color:Color(0xff2a3d17),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Age',style: TextStyle(fontWeight: FontWeight(25),fontSize: 15,color: Colors.white)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          FloatingActionButton(
                            onPressed: () { setState(() { if(age>0) age--; }); },
                            backgroundColor: Color(0xffb2e84d),
                            mini: true,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                            child: Icon(Icons.remove, size: 20, color: Colors.black),
                          ),
                          Text('$age',style: TextStyle(fontSize: 30,fontWeight: FontWeight(40),color: Colors.white)),
                          FloatingActionButton(
                            onPressed: () { setState(() { if(age<120) age++; }); },
                            backgroundColor: Color(0xffb2e84d),
                            mini: true,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                            child: Icon(Icons.add, size: 20, color: Colors.black),
                          ),
                        ],
                      ),
                      Text('Year',style: TextStyle(color: Colors.white)),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              height: 100,
              width: double.infinity,
              margin: EdgeInsets.all(5),
              child: FloatingActionButton(
                onPressed: () {
                  if(Unit=='Cm'){
                    bmiheight=height/100;
                  } else if(Unit=='Ft'){
                    bmiheight=height*0.3048;
                  } else if(Unit=='In'){
                    bmiheight=height*0.0254;
                  } else {
                    bmiheight=height/100;
                  }
                  double calculatedBmi = weight / (bmiheight * bmiheight);
                  setState(() { bmi=calculatedBmi; });
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Secondpage(bmi: calculatedBmi)));
                },
                backgroundColor: Color(0xffb2e84d),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Calculate', style: TextStyle(fontWeight: FontWeight(20), fontSize: 30)),
                    SizedBox(width: 10),
                    Icon(Icons.repeat, color: Colors.black, size: 30),
                  ],
                ),
              ),
            ),
          ],
        ),
      );

  }
}