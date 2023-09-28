import 'package:flutter/material.dart';
import 'package:fuseerp/pages/otp/otp_view_model.dart';
import 'package:fuseerp/pages/widgets/otp/keypad.dart';
import 'package:fuseerp/pages/widgets/otp/otp_textfield.dart';
import 'package:fuseerp/utils/app_colors.dart';
import 'package:provider/provider.dart';

class OTPScreen extends StatefulWidget {
  const OTPScreen({super.key});

  @override
  State<OTPScreen> createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  late OTPViewModel model;

  @override
  void initState() {
    model = OTPViewModel(context: context);
    model.controller1 = TextEditingController();
    model.controller2 = TextEditingController();
    model.controller3 = TextEditingController();
    model.controller4 = TextEditingController();
    model.controller5 = TextEditingController();
    model.controller6 = TextEditingController();
    
    super.initState();
  }
  @override
  void dispose() {
    model.controller1.dispose();
    model.controller2.dispose();
    model.controller3.dispose();
    model.controller4.dispose();
    model.controller5.dispose();
    model.controller6.dispose();
    
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme  = Theme.of(context).textTheme;
      return ChangeNotifierProvider<OTPViewModel>.value(
        value: model,
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: const Text("One time password"),
            leading: const Icon(Icons.close, size: 20, color: blackColor,),
          ),
          body: SafeArea(
              child: Column(
                 children: [
                  const SizedBox(height: 165,),
                    Consumer<OTPViewModel>(
                      builder: (_,model,__) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 120),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              OTPField(controller: model.controller1, hasFocus: true,),
                              OTPField(controller: model.controller2),
                              OTPField(controller: model.controller3),
                              OTPField(controller: model.controller4),
                              OTPField(controller: model.controller5),
                              OTPField(controller: model.controller6)
                            ],
                          ),
                        );
                      }
                    ),

                    const SizedBox(height: 242,),
                    Text("Enter 6-digit OTP sent to your email", style: textTheme.labelSmall,),
      
                    const Spacer(),
            
                    NumericKeypad(
                      input: model.input,
                      delete: model.delete,
                    ),
                 ],
              ),
           ),
        ),
      );
   }
}