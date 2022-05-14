import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:recipes_project/widgets/colors.dart';
import 'package:sizer/sizer.dart';

class HomeListWidget2 extends StatelessWidget {
  const HomeListWidget2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double cornerRadius = 6;
    return //Container(margin:EdgeInsets.all(5),color: orangeColor,);

        //child: Image.network('https://www.industrialempathy.com/img/remote/ZiClJf-1920w.jpg',width: width,height: 2.h,),
        Card(
      child: Column(
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(cornerRadius),
                  topRight: Radius.circular(cornerRadius),
                ),
                child: Image.network(
                  'https://www.industrialempathy.com/img/remote/ZiClJf-1920w.jpg',
                  width: width,
                  height: 16.h,
                  fit: BoxFit.fill,
                ),
              ),
              Positioned(
                  top: 6,
                  right: 7,
                  child: SizedBox(
                      width: width,
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: SvgPicture.asset('assets/ic_favorite_w.svg'),
                      ))),
            ],
          ),
          SizedBox(
            width: width,
            child:  Padding(
              padding: const EdgeInsets.only(left: 5,top: 8),
              child: Text(
                'Data',
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500
                ),
                textAlign: TextAlign.start,
              ),
            ),
          ),

          SizedBox(
            width: width,
            child:  Padding(
              padding: const EdgeInsets.only(left: 5,top: 1,bottom: 2),
              child: Text(
                'Is simply dummy',
                style: TextStyle(
                  fontSize: 8.sp,
                  color: grayColor
                ),
                textAlign: TextAlign.start,
                maxLines: 2,
              ),
            ),
          ),
        ],
      ),
      margin: const EdgeInsets.all(10),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(cornerRadius)),
    );
  }
}
