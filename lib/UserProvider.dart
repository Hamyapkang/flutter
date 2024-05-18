import 'package:flutter/material.dart';

class UserProvider extends ChangeNotifier{

  double steamPressure;
  double steamFlow;
  double waterLevel;
  double powerFrequency;

  List<String> nameList = ['Ben','Testing 1','Hello'];
  List<String> phoneNumList = ['+60109219938','+01234567891','+0123456789'];

  UserProvider({
    this.steamPressure = 29,
    this.steamFlow = 22,
    this.waterLevel = 53,
    this.powerFrequency = 48
  });

  void changeSteamPressure({
    required double newSteamPressure
})async{
    steamPressure = newSteamPressure;
    notifyListeners();
  }

  void changeSteamFlow({
    required double newSteamFlow
  })async{
    steamFlow = newSteamFlow;
    notifyListeners();
  }

  void changeWaterLevel({
    required double newWaterLevel
  })async{
    waterLevel = newWaterLevel;
    notifyListeners();
  }

  void changePowerFrequency({
    required double newPowerFrequency
  })async{
    powerFrequency = newPowerFrequency;
    notifyListeners();
  }
  void addContact({
    required String name,
    required String phoneNum
}) async{
    nameList.add(name);
    phoneNumList.add(phoneNum);
    notifyListeners();
  }

}