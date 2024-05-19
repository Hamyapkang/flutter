import 'package:flutter/material.dart';
import 'package:lab5/UserProvider.dart';
import 'package:provider/provider.dart';
import 'UserProvider.dart';
import 'Factory1.dart';
import 'Factory2.dart';
import 'contactF1.dart';

class Thresholdvalue extends StatefulWidget {
  const Thresholdvalue({super.key});

  @override
  State<Thresholdvalue> createState() => _ThresholdvalueState();
}

class _ThresholdvalueState extends State<Thresholdvalue> {

  TextEditingController steamPressureTextField = TextEditingController();
  TextEditingController steamFlowTextField = TextEditingController();
  TextEditingController waterLevelTextField = TextEditingController();
  TextEditingController powerFrequencyTextField = TextEditingController();
  bool isActive = false;

  @override
  Widget build(BuildContext context) {

    double currentWidth = MediaQuery.of(context).size.width;
    double currentHeight = MediaQuery.of(context).size.height;

    steamPressureTextField.text = context.watch<UserProvider>().steamPressure.toString();
    steamFlowTextField.text = context.watch<UserProvider>().steamFlow.toString();
    waterLevelTextField.text = context.watch<UserProvider>().waterLevel.toString();
    powerFrequencyTextField.text = context.watch<UserProvider>().powerFrequency.toString();


    int _currentIndex = 0;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Factory 2',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {

            },
            icon: Icon(Icons.settings),
          ),
        ],
      ),
      body:Container(
        color: Colors.grey[400],
        height: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(15.0),
                child: Container(
                  height: currentHeight*0.6,
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.grey[200],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(height: 100,),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('Minimum Threshold',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: currentWidth*0.06
                            ),),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Icon(
                              Icons.info_outline,
                              size: currentWidth*0.05,),
                          ),
                          Container(
                            padding: EdgeInsets.all(8),
                            width: currentWidth*0.1,
                            height: currentHeight*0.05,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.white
                            ),
                              child: IconButton(
                                onPressed: () {
                                  setState(() {
                                    isActive = !isActive;
                                  });
                                  context.read<UserProvider>().changeSteamPressure(newSteamPressure: double.parse(steamPressureTextField.text));
                                  context.read<UserProvider>().changeSteamFlow(newSteamFlow: double.parse(steamFlowTextField.text));
                                  context.read<UserProvider>().changeWaterLevel(newWaterLevel: double.parse(waterLevelTextField.text));
                                  context.read<UserProvider>().changePowerFrequency(newPowerFrequency: double.parse(powerFrequencyTextField.text));
                                },
                                icon: Icon(Icons.edit),
          
                              )
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(17),
                            child: Container(
                              width: currentWidth*0.195,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text('Steam Pressure',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: currentWidth*0.04,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.fromLTRB(0, 5, 0, 10),
                                    height: currentHeight*0.05,
                                    width: currentWidth*0.3,
                                    decoration: BoxDecoration(
                                        border: Border.all(color: Colors.grey),
                                        borderRadius: BorderRadius.circular(10)
                                    ),
                                    child: Row(
                                      children: [
                                        Container(
                                          width: currentWidth*0.12,
                                          child: TextField(
                                            key: Key("steamPressure"),
                                            controller: steamPressureTextField,
                                            enabled: isActive,
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: currentWidth*0.045
                                            ),
                                          ),
                                        ),
                                        VerticalDivider(
                                          width: currentWidth*0.005,
                                          thickness: currentWidth*0.004,
                                          color: Colors.grey,
                                        ),
                                        Container(
                                          padding: EdgeInsets.all(5),
                                          child: Text('bar',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: currentWidth*0.025
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Text('Water Level',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: currentWidth*0.035,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Container(
                                    height: currentHeight*0.05,
                                    width: currentWidth*0.3,
                                    decoration: BoxDecoration(
                                        border: Border.all(color: Colors.grey),
                                        borderRadius: BorderRadius.circular(10)
                                    ),
                                    child: Row(
                                      children: [
                                        Container(
                                          width: currentWidth*0.12,
                                          child: TextField(
                                            controller: waterLevelTextField,
                                            enabled: isActive,
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: currentWidth*0.045
                                            ),
                                          ),
                                        ),
                                        VerticalDivider(
                                          width: currentWidth*0.005,
                                          thickness: currentWidth*0.004,
                                          color: Colors.grey,
                                        ),
                                        Container(
                                          padding: EdgeInsets.all(5),
                                          child: Text('%',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: currentWidth*0.025
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: currentWidth*0.1,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(17),
                            child: Container(
                              width: currentWidth*0.195,
                              child: Column(
                                children: [
                                  Text('Steam Flow',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: currentWidth*0.035,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Container(
                                    height: currentHeight*0.05,
                                    width: currentWidth*0.3,
                                    decoration: BoxDecoration(
                                        border: Border.all(color: Colors.grey),
                                        borderRadius: BorderRadius.circular(10)
                                    ),
                                    child: Row(
                                      children: [
                                        Container(
                                          width: currentWidth*0.12,
                                          child: TextField(
                                            controller: steamFlowTextField,
                                            enabled: isActive,
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: currentWidth*0.045
                                            ),
                                          ),
                                        ),
                                        VerticalDivider(
                                          width: currentWidth*0.005,
                                          thickness: currentWidth*0.004,
                                          color: Colors.grey,
                                        ),
                                        Container(
                                          padding: EdgeInsets.all(5),
                                          child: Text('T/H',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: currentWidth*0.02
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Text('Power Frequency',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: currentWidth*0.035,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Container(
                                    height: currentHeight*0.05,
                                    width: currentWidth*0.3,
                                    decoration: BoxDecoration(
                                        border: Border.all(color: Colors.grey),
                                        borderRadius: BorderRadius.circular(10)
                                    ),
                                    child: Row(
                                      children: [
                                        Container(
                                          width: currentWidth*0.12,
                                          child: TextField(
                                            controller: powerFrequencyTextField,
                                            enabled: isActive,
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: currentWidth*0.045
                                            ),
                                          ),
                                        ),
                                        VerticalDivider(
                                          width: currentWidth*0.005,
                                          thickness: currentWidth*0.004,
                                          color: Colors.grey,
                                        ),
                                        Container(
                                          padding: EdgeInsets.all(5),
                                          child: Text('Hz',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: currentWidth*0.025
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
          
              Padding(
                padding:EdgeInsets.fromLTRB(10, 0, 5, 0),
                child: Container(
                  height: currentHeight*0.15,
                  color: Colors.grey[400],
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      GestureDetector(
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(12, 0, 12, 0),
                          child: Container(
                            width:currentWidth*0.45,
                            decoration: BoxDecoration(
                              boxShadow:[BoxShadow(
                                  color: Colors.grey.withOpacity(0.8),
                                  spreadRadius: 5,
                                  blurRadius: 8,
                                  offset: Offset(0, 3)
                              )
                              ],
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(Icons.factory,size: currentWidth*0.08,),
                                SizedBox(
                                  height: currentHeight*0.025,
                                ),
                                Text('Factory 1',style: TextStyle(
                                  fontSize: currentWidth*0.05,
                                ),)
                              ],
                            ),
                          ),
                        ),
          
                      ),
                      GestureDetector(
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(12, 0, 12, 0),
                          child: Container(
                            width:currentWidth*0.45,
                            decoration: BoxDecoration(
                              boxShadow:[BoxShadow(
                                  color: Colors.blue.withOpacity(0.8),
                                  spreadRadius: 2,
                                  blurRadius: 3,
                                  offset: Offset(0, 3)
                              )
                              ],
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(7),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(Icons.factory,size: currentWidth*0.08,),
                                SizedBox(
                                  height: currentHeight*0.025,
                                ),
                                Text('Factory 2',style: TextStyle(
                                  fontSize: currentWidth*0.05,
                                ),)
                              ],
                            ),
                          ),
                        ),
                        onTap: (){
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => Factory2(),
                            ),
                          );
                        },
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(12, 0, 12, 0),
                        child: Container(
                          width:currentWidth*0.45,
                          decoration: BoxDecoration(
                            boxShadow:[BoxShadow(
                                color: Colors.grey.withOpacity(0.8),
                                spreadRadius: 2,
                                blurRadius: 3,
                                offset: Offset(0, 3)
                            )
                            ],
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(7),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(Icons.factory,size: currentWidth*0.08,),
                              SizedBox(
                                height: currentHeight*0.025,
                              ),
                              Text('Factory 3',style: TextStyle(
                                fontSize: currentWidth*0.05,
                              ),)
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                )
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (int newIndex){
          setState(() {
            _currentIndex = newIndex;
            switch(_currentIndex){
              case 0:
                Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => ContactF1(),
                    )
                );
              case 1:
                Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => Factory1(),
                    )
                );

            }
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: const Icon(Icons.person),
              label:''
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label:''
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label:''
          ),
        ],
      ),
    );
  }
}
