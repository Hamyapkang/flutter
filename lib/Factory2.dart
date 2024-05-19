import 'package:flutter/material.dart';
import 'package:lab5/Thresholdvalue.dart';
import 'package:lab5/contactF1.dart';
import 'Factory1.dart';
import 'Factory2/SteamPressureF2.dart';
import 'Factory2/SteamFlow.dart';
import 'Factory2/WaterLevel.dart';
import 'Factory2/PowerFrequency.dart';

class Factory2 extends StatefulWidget {
  const Factory2({super.key});

  @override
  State<Factory2> createState() => _Factory2State();
}



class _Factory2State extends State<Factory2> {
  @override
  Widget build(BuildContext context) {

    final currentWidth = MediaQuery.of(context).size.width;
    final currentHeight = MediaQuery.of(context).size.height;

    int _currentIndex = 1;
    return Scaffold(
        appBar: AppBar(
          title: const Text('Factory 2',
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold),),
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => Thresholdvalue(),
                    )
                );
              },
              icon: Icon(Icons.settings),
            ),
          ],
        ),
        body:Container(
          color: Colors.grey[400],
          height: double.infinity,
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(15.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.grey[200],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('1549.7kW',
                            style:TextStyle(
                              fontSize: currentWidth*0.06,
                              fontWeight: FontWeight.bold
                            ),
                          )
                        ],
                      ),
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.all(13.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SteamPressureF2(),
                              SizedBox(
                                width: currentWidth*0.035,
                              ),
                              SteamFlow(),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(13.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            WaterLevel(),
                            SizedBox(
                              width: currentWidth*0.035,
                            ),
                            PowerFrequency(),
                          ],
                        ),
                      ),
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('2024-04-26 13:45:25',
                          style: TextStyle(
                              fontSize: currentWidth*0.04
                          ),),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: currentHeight*0.01,
              ),
              Container(
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
                                spreadRadius: 2,
                                blurRadius: 3,
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
                      onTap: (){
                        Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => Factory1(),
                            ),
                        );
                      },
                    ),
                    GestureDetector(
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(12, 0, 12, 0),
                        child: Container(
                          width:currentWidth*0.45,
                          decoration: BoxDecoration(
                            boxShadow:[BoxShadow(
                                color: Colors.lightBlue.withOpacity(0.8),
                                spreadRadius: 5,
                                blurRadius: 8,
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
            ],
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
                        builder: (context) => Factory2(),
                      )
                  );
                case 2:
                  Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => Thresholdvalue(),
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
