import 'package:flutter/material.dart';
import 'package:maps_first_app/constants/my_colors.dart';
import 'package:maps_first_app/view/widgets/custom_button.dart';
import 'package:maps_first_app/view/widgets/intro_text.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          physics: NeverScrollableScrollPhysics(),
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 32, vertical: 88),
            child: Column(
              children: [
                IntroText(
                  isOtp: true,
                  mainText: "Verify your phone number",
                  subText: "Enter your 6 digit code number sent to",
                  number: "+2001033179558",
                ),
                SizedBox(
                  height: 88,
                ),
                PinCodeFields(),
                SizedBox(
                  height: 60,
                ),
                CustomButton(
                  text: "Verify",
                  f: () {},
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class PinCodeFields extends StatelessWidget {
  const PinCodeFields({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: PinCodeTextField(
        appContext: context,
        length: 6,
        autoFocus: true,
        keyboardType: TextInputType.number,
        cursorColor: Colors.black,
        obscureText: false,
        animationType: AnimationType.fade,
        pinTheme: PinTheme(
            shape: PinCodeFieldShape.box,
            borderRadius: BorderRadius.circular(5),
            fieldHeight: 50,
            fieldWidth: 40,
            borderWidth: 1,
            activeColor: MyColor.blue,
            inactiveColor: MyColor.blue,
            activeFillColor: MyColor.lightBlue,
            inactiveFillColor: Colors.white,
            selectedColor: MyColor.blue,
            selectedFillColor: Colors.white),
        animationDuration: Duration(milliseconds: 300),
        backgroundColor: Colors.white,
        enableActiveFill: true,
        onCompleted: (otp) {
          print("Completed");
        },
        onChanged: (String value) {
          print(value);
        },
      ),
    );
  }
}
