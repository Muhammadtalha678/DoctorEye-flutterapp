import 'package:stacked/stacked.dart';
import 'package:flutter/material.dart';
class TopDoctorViewModel extends BaseViewModel{
  bool Is_bool = false;
  
  void initialise(){
    Is_bool = false;
  notifyListeners();
  }
  void updatebool(){
    if (Is_bool == false) {
      Is_bool = true;
      
    }
    else{
      Is_bool = false;
    }
    notifyListeners();
  }
}