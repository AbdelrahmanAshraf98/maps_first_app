import 'package:flutter/material.dart';
import 'package:maps_first_app/constants/my_colors.dart';

class IntroText extends StatelessWidget {
  const IntroText(
      {Key? key,
      this.number,
      required this.isOtp,
      required this.mainText,
      required this.subText})
      : super(key: key);
  final bool isOtp;
  final String mainText;
  final String subText;
  final String? number;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          mainText,
          style: TextStyle(
              color: Colors.black, fontSize: 24, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 30,
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 2),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                subText,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18.0,
                ),
              ),
              if (isOtp)
                SizedBox(
                  height: 5.0,
                ),
              if (isOtp)
                Text(
                  number!,
                  style: TextStyle(
                    color: MyColor.blue,
                    fontSize: 18.0,
                  ),
                ),
            ],
          ),
        )
      ],
    );
  }
}
