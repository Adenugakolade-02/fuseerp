import 'package:flutter/material.dart';
import 'package:fuseerp/utils/app_colors.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme  = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Accounts"),
        leading:  IconButton(onPressed: ()=>Navigator.of(context).pop(), icon: const Icon(Icons.arrow_back, size: 20, color: blackColor,)),
      ),
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 56,),
            RichText(
              text:  TextSpan(
                text: "Hello, ",
                style: textTheme.titleSmall!.copyWith(fontSize: 14),
                children: [
                  TextSpan(
                    style: textTheme.titleSmall!.copyWith(fontSize: 14, color: primary500),
                    text: "Kolade"
                  )
                ]
              )
            ),
            const SizedBox(height: 16,),
            Text(
              "Tap the sign in button to the organization you’d like to \nhave access to.",
              style: textTheme.bodySmall,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 42,),
            const Divider(color: grey200,),
            paystackPadding(true, context),
            const Divider(color: grey200,),
            paystackPadding(false, context),
            const Divider(color: grey200,)
          ],
        )
        ),
    );
  }

  Widget paystackPadding(bool showBadge, BuildContext context){
    final TextTheme textTheme  = Theme.of(context).textTheme;
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      height: 58,
      child: Row(
        children: [
          Stack(
            children: [
              Container(
                height: 32,
                width: 32,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16)
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image.asset("asset/images/paystack.png", fit: BoxFit.contain,)),
              ),
              Positioned(
                top:-2,
                left: -1,
                child: Container(
                  height: 12,
                  width: 12,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    color: showBadge ? error500 : Colors.transparent,
                    border: Border.all(
                      color: showBadge ? whiteColor: Colors.transparent,
                      width: 2
                    )
                  ),
                )
              )
            ],
          ),
          const SizedBox(width: 11,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Paystack nigerian limited",style: textTheme.displayLarge!.copyWith(fontSize: 12, color: textColor2),),
              const SizedBox(height: 2,),
              Text("https://paystack.fuseerp.com",style: textTheme.labelSmall!.copyWith(fontSize: 10, color: textColor2),),
            ],
          ),
          const Spacer(),
          OutlinedButton(onPressed: (){}, child: const Text("Sign in"))
        ],
      ),
    );
  }
}