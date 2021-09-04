import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:maps_first_app/view/widgets/custom_button.dart';
import 'package:maps_first_app/view/widgets/intro_text.dart';
import '../../constants/my_colors.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);
  final GlobalKey<FormState> _phoneFormkey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Form(
          key: _phoneFormkey,
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 32, vertical: 88),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IntroText(
                  isOtp: false,
                  mainText: "what's your phone number?",
                  subText:
                      "Please enter your phone number to verify your acccount",
                ),
                SizedBox(
                  height: 30,
                ),
                PhoneFormField(),
                SizedBox(
                  height: 70,
                ),
                CustomButton(
                  f: () {},
                  text: "Next",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class PhoneFormField extends StatelessWidget {
  PhoneFormField({Key? key}) : super(key: key);
  late String phoneNumber;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 16),
            decoration: BoxDecoration(
              border: Border.all(color: MyColor.lightGrey),
              borderRadius: BorderRadius.all(Radius.circular(6)),
            ),
            child: Text(
              "🇪🇬" + " +20",
              style: TextStyle(fontSize: 18.0, letterSpacing: 2.0),
            ),
          ),
        ),
        SizedBox(
          width: 5.0,
        ),
        Expanded(
          flex: 2,
          child: Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 2),
            decoration: BoxDecoration(
              border: Border.all(color: MyColor.lightBlue),
              borderRadius: BorderRadius.all(Radius.circular(6)),
            ),
            child: TextFormField(
              autofocus: true,
              maxLength: 11,
              decoration: InputDecoration(
                  hintText: "010", counterText: "", border: InputBorder.none),
              maxLengthEnforcement: MaxLengthEnforcement.enforced,
              style: TextStyle(fontSize: 18.0, letterSpacing: 2.0),
              cursorColor: Colors.black,
              keyboardType: TextInputType.number,
              validator: (value) {
                if (value!.isEmpty)
                  return 'Please enter your phone number';
                else if (value.length < 11)
                  return 'Short for a phone number';
                else
                  return null;
              },
              onSaved: (value) {
                phoneNumber = value!;
              },
            ),
          ),
        )
      ],
    );
  }
}
