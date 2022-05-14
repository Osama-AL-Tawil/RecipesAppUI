import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'colors.dart';

class ButtonWidget extends StatelessWidget {
  final String label;
  final double? height;
  final double? borderRadius;
  final Color textColor;
  final Color backgroundColor;
  final Function press;

  const ButtonWidget({Key? key,
    required this.label,
    required this.press,
    required this.textColor,
    required this.backgroundColor,
    this.height = 55,
    this.borderRadius = 30.0,})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height:55, //height of button
      width:MediaQuery.of(context).size.width- 7.w, //width of button
      child: ElevatedButton(
        onPressed: () { press(); },
        child:Text(label,style:  TextStyle(fontSize:11.sp,color: textColor)),
        style: ElevatedButton.styleFrom(shape: const StadiumBorder(),primary: backgroundColor),

      ),);





      //
    // return   Material(
    //   color: orangeColor,
    //   borderRadius: BorderRadius.circular(50),
    //   child: InkWell(
    //     onTap: press(),
    //     borderRadius: BorderRadius.circular(50),
    //     child: Container(
    //       width: MediaQuery.of(context).size.width-30,
    //       height: 55,
    //       alignment: Alignment.center,
    //       child: Text(label,style: const TextStyle(fontSize: 16,color: whiteColor,fontWeight: FontWeight.bold)),
    //     ),
    //   ),
    // );

  }
}
