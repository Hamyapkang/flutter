import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:lab5/Invitation.dart';
import 'package:lab5/UserProvider.dart';
import 'package:provider/provider.dart';
import 'Factory1.dart';
import 'Factory2.dart';
import 'Factory1.dart';
import 'Thresholdvalue.dart';


class ContactF1 extends StatefulWidget {
  const ContactF1({Key? key}) : super(key: key);

  @override
  State<ContactF1> createState() => _ContactF1State();
}

class _ContactF1State extends State<ContactF1> {
  int _currentIndex = 1;

  @override
  Widget build(BuildContext context) {
    final currentWidth = MediaQuery.of(context).size.width;
    final currentHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Factory 2'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => Thresholdvalue(),
                ),
              );
            },
            icon: Icon(Icons.settings),
          ),
        ],
      ),
      body: Container(
        color: Colors.grey[400],
        height: double.infinity,
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Column(
            children: [
              Container(
                height: currentHeight*0.58,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey[300],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Expanded(
                      child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        itemBuilder: (BuildContext context, int index) {
                          return Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Container(
                              padding: EdgeInsets.all(15),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    context.watch<UserProvider>().nameList[index],
                                    style: TextStyle(
                                      fontSize: currentWidth*0.06,
                                    ),
                                  ),
                                  Text(
                                    context.watch<UserProvider>().phoneNumList[index],
                                    style: TextStyle(
                                      fontSize: currentWidth*0.06,
                                    ),
                                  ),
                                ],
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                              ),
                            ),
                          );
                        },
                        itemCount: context.watch<UserProvider>().nameList.length,
                      ),
                    ),
                    GestureDetector(
                      child: Container(
                        margin: EdgeInsets.all(20),
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.8),
                              spreadRadius: 2,
                              blurRadius: 3,
                              offset: Offset(0, 3),
                            ),
                          ],
                          color: Colors.purple[50],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: TextButton(
                          onPressed: () {
                            Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => Invitation(),
                                ),
                            );
                          },
                          child: Text('+',
                          style: TextStyle(
                            fontSize: currentWidth*0.05
                          ),),
                        ),
                      ),
                      onTap: (){
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => Invitation(),
                          ),
                        );

                      },
                    ),
                    SizedBox(height: 20),
                  ],
                ),
              ),
              SizedBox(
                height: currentHeight*0.02,
              ),
              Container(
                height: currentHeight*0.145,
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
                                color: Colors.lightBlue.withOpacity(0.8),
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
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (int newIndex) {
          setState(() {
            _currentIndex = newIndex;
            switch (_currentIndex) {
              case 1:
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => Factory1(),
                  ),
                );
                break;
              case 2:
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => Thresholdvalue(),
                  ),
                );
                break;
            }
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: const Icon(Icons.person),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            key: Key("settingBt"),
            icon: Icon(Icons.settings),
            label: '',
          ),
        ],
      ),
    );
  }
}
