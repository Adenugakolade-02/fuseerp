import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class GeneralViewModel extends ChangeNotifier{
  final BuildContext context;
  List<String> genderList = ["Male", "Female"];
  List<String> maritalStatusList = ["Single", "Married", "Divorced"];
  List<String> countryList = ["Nigeria", "Ghana", "South Africa"];
  List<String> citiesList = ["Lagos", "Accra", "Cape Town"];

  String? selectedGender;
  String? selectedMaritalStatus;
  String? selectedCountry;
  String? selectedCity;

  int value = 0;

  File? imageFile;

  // FocusNode? node1;
  FocusNode? node1;
  FocusNode? node2;
  FocusNode? node3;

  GeneralViewModel({required this.context});









  void chooseGender(String? gender){
    if(selectedGender==null){
      value++;
      notifyListeners();
    }else{}
    
    selectedGender = gender;
    
  }

  void chooseMaritalStatus(String? maritalStatus){
    if(selectedMaritalStatus==null){
      value++;
      notifyListeners();
    }else{}
    selectedMaritalStatus = maritalStatus;
  }

  void chooseCountry(String? country){
    if(selectedCountry==null){
      value++;
      notifyListeners();
    }else{}
    selectedCountry = country;
  }

  void chooseCity(String? city){
    if(selectedCity==null){
      value++;
      notifyListeners();
    }else{}
    selectedCity = city;
  }

  void onSubmit1(String _){
    FocusScope.of(context).requestFocus(node2);
    value++;
    notifyListeners();
  }

  void onSubmit2(String _){
    FocusScope.of(context).requestFocus(node3);
    value++;
    notifyListeners();
  }

  void hasChanged(String _){
    value++;
    notifyListeners();
  }

  Future<void> getFromGallery() async {
    XFile? pickedFile = await ImagePicker().pickImage(
        source: ImageSource.gallery,
        maxWidth: 1800,
        maxHeight: 1800,
    );
    if (pickedFile != null) {
        imageFile = File(pickedFile.path);
        value++;
        notifyListeners();

    }
  }

  void navigate(){
    Navigator.of(context).pushNamed('/account');
  }

}