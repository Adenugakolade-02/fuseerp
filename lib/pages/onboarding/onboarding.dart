import 'package:flutter/material.dart';
import "package:provider/provider.dart";

import 'package:fuseerp/pages/onboarding/onboarding_view_model.dart';
import 'package:fuseerp/pages/widgets/onboarding/dropdownfield.dart';
import 'package:fuseerp/pages/widgets/onboarding/progress_indicator.dart';
import 'package:fuseerp/pages/widgets/onboarding/textfield.dart';
import 'package:fuseerp/utils/app_colors.dart';


class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  late GeneralViewModel model;
  @override
  void initState() {
    model = GeneralViewModel(context: context);
    model.node1 = FocusNode();
    model.node2 = FocusNode();
    model.node3 = FocusNode();
    
    super.initState();
  }
  @override
  void dispose() {
    model.node1!.dispose();
    model.node2!.dispose();
    model.node3!.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    return  ChangeNotifierProvider.value(
      value: model,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title:  Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Employee pre-onboarding"),
                  const SizedBox(height: 2,),
                  Text("Personal Profile", style: textTheme.displayLarge!.copyWith(fontSize: 12, color: grey500),)
                ],
              ),
              Consumer<GeneralViewModel>(
                builder: (context, model , __) {
                  return KProgressIndicator(value: model.value);
                }
              )
            ],
          ),
          
        ),
        body:  SafeArea(
          child: SafeArea(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    const SizedBox(height: 24),
                    InkWell(
                      onTap: model.getFromGallery,
                      child: Container(
                        height: 84,
                        width: 84,
                        decoration: BoxDecoration(
                          color: whiteColor,
                          border: Border.all(width: 2, color: const Color(0xFFF1F5F9))
                        ),
                        child: Consumer<GeneralViewModel>(
                          builder: (_,model,__) {
                            return model.imageFile==null? Image.asset("asset/images/profile.png") : SizedBox(height: 48, width: 48, child: Image.file(model.imageFile!),);
                          }
                        ),
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text("Tap to upload profile picture", style: textTheme.labelSmall,),
    
                    const SizedBox(height: 24),
    
                     CustomTextField(labelText: "First Name", onChanged: model.onSubmit1),
                    const SizedBox(height: 16),
    
                    CustomTextField(labelText: "Last Name", onChanged: model.onSubmit2, node: model.node2,),
                    const SizedBox(height: 16),
    
                    CustomTextField(labelText: "Middle Name", onChanged: model.hasChanged, node:model.node3),
                    const SizedBox(height: 16),
    
                    DropField(label: "Marital Status" ,menuItems: model.maritalStatusList, selectedItem: model.selectedMaritalStatus, function: model.chooseMaritalStatus),
                    const SizedBox(height: 16),
    
                    DropField(label: "Gender" ,menuItems: model.genderList, selectedItem: model.selectedGender, function: model.chooseGender),
                    const SizedBox(height: 16),
    
                    DropField(label: "Country" ,menuItems: model.countryList, selectedItem: model.selectedCountry, function: model.chooseCountry),
                    const SizedBox(height: 16),
    
                    CustomTextField(labelText: "Address", onChanged: model.hasChanged,),
                    const SizedBox(height: 16),
    
                    DropField(label: "City" ,menuItems: model.citiesList, selectedItem: model.selectedCity, function: model.chooseCity),
                    const SizedBox(height: 16),
    
                    ElevatedButton(onPressed: model.navigate, child: const Text("Next")),
                    const SizedBox(height: 4),
    
                    Align(
                      alignment: Alignment.centerRight,
                      child: Text("Next: Education history", style: textTheme.titleSmall,),
                    ),
                    const SizedBox(height: 11),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}