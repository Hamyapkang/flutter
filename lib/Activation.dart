import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'ActivationCode.dart';

class Activation extends StatefulWidget {
  const Activation({Key? key});

  @override
  State<Activation> createState() => _ActivationState();
}


class _ActivationState extends State<Activation> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {

    final currentWidth = MediaQuery.of(context).size.width;
    final currentHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      resizeToAvoidBottomInset: false,
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
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Text(
                                'Enter your mobile number to activate your account.',
                                style: TextStyle(
                                  fontSize: currentWidth*0.05,
                                ),
                                overflow: TextOverflow.clip,
                                maxLines: 2,
                              ),
                              SizedBox(
                                height: 40,
                              ),
                              IntlPhoneField(
                                flagsButtonPadding: const EdgeInsets.all(8),
                                dropdownIconPosition: IconPosition.trailing,
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                  ),
                                ),
                                initialCountryCode: 'MY',
                                onChanged: (phone) {
                                  print(phone.completeNumber);
                                },
                              ),
            
            
            
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Checkbox(
                                    value: isChecked,
                                    onChanged: (newValue) {
                                      setState(() {
                                        isChecked = newValue ?? false;
                                      });
                                    },
                                  ),
                                  Text('I agree to the terms & conditions',
                                  style: TextStyle(
                                    fontSize: currentWidth*0.035
                                  ),),
                                ],
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(20, 20, 0, 0),
                                child: TextButton(
                                  onPressed: isChecked
                                      ? () {
                                    Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (context) => ActivationCode(),
                                      ),
                                    );
                                  }
                                      : null,
                                  child: Text(
                                    'Get Activation Code',
                                    style: TextStyle(
                                      fontSize: currentWidth*0.05,
                                    ),
                                  ),
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(30.0),
                                      ),
                                    ),
                                  ),
                                ),
                              )
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
