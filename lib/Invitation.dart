import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:lab5/UserProvider.dart';
import 'package:lab5/contactF1.dart';
import 'package:provider/provider.dart';

class Invitation extends StatelessWidget {

  TextEditingController ownerNameController = TextEditingController();
  TextEditingController ownerPhoneNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    final currentWidth = MediaQuery.of(context).size.width;
    final currentHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text('Factory 2'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.settings),
          ),
        ],
      ),
      body: Container(
        color: Colors.grey[400],
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: [
            Container(
              child: Column(
                children: [
                  Text(
                    'Invitation',
                    style: TextStyle(
                      fontSize: currentWidth*0.055,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Invite users',
                    style: TextStyle(fontSize: currentWidth*0.03),
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: currentHeight*0.02,
                  ),
                  Text("Owner's Name",
                  style: TextStyle(
                    fontSize: currentWidth*0.04
                  ),),
                  TextField(
                    key: Key("ownerName"),
                    controller: ownerNameController,
                    decoration: InputDecoration(
                      hintText: 'Type here',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(
                    height: currentHeight*0.02,
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Owner's Phone Number",
                  style: TextStyle(
                      fontSize: currentWidth*0.04
                  ),),
                  IntlPhoneField(
                    key: Key("phoneNo"),
                    controller: ownerPhoneNumberController,
                    flagsButtonPadding: const EdgeInsets.all(8),
                    dropdownIconPosition: IconPosition.trailing,
                    showCursor: false,
                    decoration: const InputDecoration(
                      labelText: 'Phone Number',
                      border: OutlineInputBorder(
                        borderSide: BorderSide(),
                      ),
                    ),
                    initialCountryCode: 'MY',
                  ),
                  GestureDetector(
                    onTap: () {
                      context.read<UserProvider>().addContact(name: ownerNameController.text, phoneNum: ownerPhoneNumberController.text);// Execute the submit method
                      Navigator.of(context).pop(
                          MaterialPageRoute(
                            builder: (context) => ContactF1(),
                          )
                      ); // Close the Invitation screen
                    },
                    child: Container(
                      key:Key("submit"),
                      margin: EdgeInsets.all(20),
                      padding: EdgeInsets.all(10),
                      width: double.infinity,
                      height: currentHeight*0.05,
                      child: Text(
                        'Submit',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: currentWidth*0.04,
                          color: Colors.purple,
                        ),
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
