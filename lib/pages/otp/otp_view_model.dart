import 'dart:developer';

import 'package:flutter/material.dart';

class OTPViewModel extends ChangeNotifier{
  final BuildContext context;
  
  late TextEditingController controller1;
  late TextEditingController controller2;
  late TextEditingController controller3;
  late TextEditingController controller4;
  late TextEditingController controller5;
  late TextEditingController controller6;

  OTPViewModel({required this.context});
  
  
  void input(String text){
    List<TextEditingController> contollerList = [controller1, controller2, controller3, controller4, controller5, controller6 ];
    for(int i=0; i< contollerList.length;i ++){
      if(contollerList[i].text.isEmpty){
        contollerList[i].text = text;
        log("clicked");
        notifyListeners();
        if(contollerList[5].text.isNotEmpty){
          Navigator.of(context).pushNamed('/onboarding');
        }
        break;
      }
    
      else{}
    }
  }

  void delete(){
    List<TextEditingController> controllerList = [controller1, controller2, controller3, controller4, controller5, controller6 ];
    for(int i=0; i< controllerList.length;i ++){
      if(controllerList[i].text.isEmpty){
        if(i==0){
          continue;
        }
        controllerList[i-1].clear();
        log("Deleted");
        notifyListeners();
        continue;
      }
      else if(controllerList[5].text.isNotEmpty){
        controllerList[5].clear();
        notifyListeners();
        break;
      }
      else{

      }
    }
  }

}