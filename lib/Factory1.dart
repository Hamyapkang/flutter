import 'package:flutter/material.dart';
import 'package:lab5/Thresholdvalue.dart';
import 'Factory1/InvitationF1.dart';
import 'Factory2.dart';
import 'Factory1/PowerFrequencyF1.dart';
import 'Factory1/SteamFlowF1.dart';
import 'Factory1/SteamPressureF1.dart';
import 'Factory1/WaterLevelF1.dart';
import 'contactF1.dart';

class Factory1 extends StatefulWidget {
  const Factory1({super.key});

  @override
  State<Factory1> createState() => _Factory1State();
}

class _Factory1State extends State<Factory1> {
  int _currentIndex = 1;

  @override
  Widget build(BuildContext context) {
    final currentWidth = MediaQuery.of(context).size.width;
    final currentHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Factory 1',
          style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.settings),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.grey[400],
          height: currentHeight,
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
                          Icon(
                            Icons.warning_rounded,
                            color: Colors.yellow,
                            size: currentWidth * 0.06,
                          ),
                          Text(
                            'ABD1234 IS UNREACHABLE!',
                            style: TextStyle(
                                fontSize: currentWidth * 0.06,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.all(13.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SteamPressureF1(),
                              SizedBox(
                                width: currentWidth * 0.035,
                              ),
                              SteamFlowF1(),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(13.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            WaterLevelF1(),
                            SizedBox(
                              width: currentWidth * 0.035,
                            ),
                            PowerFrequencyF1(),
                          ],
                        ),
                      ),
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            '2024-04-26 13:45:25',
                            style: TextStyle(fontSize: currentWidth * 0.04),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: currentHeight * 0.01,
              ),
              Container(
                height: currentHeight * 0.15,
                color: Colors.grey[400],
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    _buildFactoryCard(
                      context,
                      'Factory 1',
                      Icons.factory,
                      currentWidth,
                      currentHeight,
                    ),
                    GestureDetector(
                      key: Key("Factory2"),
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => Factory2(),
                          ),
                        );
                      },
                      child: _buildFactoryCard(
                        context,
                        'Factory 2',
                        Icons.factory,
                        currentWidth,
                        currentHeight,
                      ),
                    ),
                    _buildFactoryCard(
                      context,
                      'Factory 3',
                      Icons.factory,
                      currentWidth,
                      currentHeight,
                    ),
                  ],
                ),
              ),
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
              case 0:
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => InvitationF1(),
                  ),
                );
                break;
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
                    builder: (context) => InvitationF1(),
                  ),
                );
                break;
            }
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: const Icon(Icons.person), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: ''),
        ],
      ),
    );
  }

  Widget _buildFactoryCard(BuildContext context, String title, IconData icon,
      double currentWidth, double currentHeight) {
    return Padding(
      padding: EdgeInsets.fromLTRB(12, 0, 12, 0),
      child: Container(
        width: currentWidth * 0.45,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.8),
              spreadRadius: 2,
              blurRadius: 3,
              offset: Offset(0, 3),
            )
          ],
          color: Colors.white,
          borderRadius: BorderRadius.circular(7),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(icon, size: currentWidth * 0.08),
            SizedBox(
              height: currentHeight * 0.025,
            ),
            Text(
              title,
              style: TextStyle(
                fontSize: currentWidth * 0.05,
              ),
            )
          ],
        ),
      ),
    );
  }
}
