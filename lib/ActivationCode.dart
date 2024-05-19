import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:lab5/Factory1.dart';


class ActivationCode extends StatefulWidget {
  const ActivationCode({Key? key});

  @override
  State<ActivationCode> createState() => _ActivationCodeState();
}

class _ActivationCodeState extends State<ActivationCode> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {


    final currentWidth = MediaQuery.of(context).size.width;
    final currentHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Container(
            margin: EdgeInsets.fromLTRB(10, 30, 10, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(
                  'images/logo.jpg',
                  width: currentWidth*0.3,
                ),
                Text(
                  'Welcome !',
                  style: TextStyle(
                    fontSize: currentWidth*0.08,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: currentHeight*0.45,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.red[100],
                    boxShadow: [
                      BoxShadow(
                          color:Colors.grey.withOpacity(0.5),
                          spreadRadius: 3,
                          blurRadius: 4,
                          offset: Offset(0,3)
                      )],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8),
                          child: Column(
                            children: [
                              Text(
                                'Enter the activation code you received via SMS',
                                style: TextStyle(
                                  fontSize: currentWidth*0.05,
                                ),
                                overflow: TextOverflow.clip,
                                maxLines: 2,
                              ),
                              SizedBox(
                                height: 40,
                              ),
                              TextField(
                                key: Key("otp"),
                                textAlign: TextAlign.center,
                                maxLength: 6,
                                showCursor: true,
                                decoration: InputDecoration(
                                  hintText: 'OTP',
                                  hintStyle: TextStyle(
                                    color: Colors.grey,
                                    fontSize: currentWidth * 0.05,
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    borderSide: BorderSide(color: Colors.grey),
                                  ),
                                  contentPadding: EdgeInsets.symmetric(vertical: 15), // Adjust the vertical padding
                                ),
                              ),
                              SizedBox(
                                height: 40,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("Didn't receive?",
                                    textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: currentWidth*0.035,
                                        decoration: TextDecoration.underline,
                                      ),
                                  ),
                                  Text('Tap here',textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.lightBlueAccent,
                                        decoration: TextDecoration.underline,
                                      fontSize: currentWidth*0.035
                                    ),),
                                ],
                              ),
                              Container(
                                child: TextButton(

                                    onPressed: (){
                                      Navigator.of(context).push(
                                          MaterialPageRoute(
                                            builder: (context) => Factory1(),
                                          )
                                      );
                                    },
                                    child: Text('Activate',
                                      style: TextStyle(
                                        fontSize: currentWidth*0.05,
                                      ),),
                                    style: ButtonStyle(
                                        backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                            RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(30.0),
                                            )
                                        )
                                    )
        
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(5, 20, 20, 0),
                        child: Icon(Icons.info_rounded,size: currentWidth*0.05,),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Center(
                  child: Text('Disclaimer | Privacy Statement',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.lightBlueAccent,
                        decoration: TextDecoration.underline,
                        fontSize: currentWidth*0.04
                    ),),
                ),
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: Text('Copyright UPM & Kejuruteraan Minyak Sawait CCS Sdn.Bhd',
                    style: TextStyle(
                        fontSize: currentWidth*0.035
                    ),
                    overflow: TextOverflow.clip,
                    textAlign: TextAlign.center,
                    maxLines: 2,),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
