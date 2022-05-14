import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'colors.dart';

class CategoryListItem extends StatelessWidget {
  const CategoryListItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double borderRadius = 6;
    return Card(
      child:
      Stack(alignment: Alignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(borderRadius),
            child: Image.network(
              'https://www.industrialempathy.com/img/remote/ZiClJf-1920w.jpg',
              width: width,
              height: 200,
              fit: BoxFit.fill,
            ),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(borderRadius),
            child: Container(color:const Color(0x40000000),),
          ),
          Text('Category',style: TextStyle(fontSize: 16.sp,color: whiteColor,fontWeight: FontWeight.w500),),
          Positioned.fill(
              child:  Material(
                  color: Colors.transparent,
                  child:  InkWell(
                    borderRadius: BorderRadius.circular(borderRadius),
                    hoverColor: const Color(0x40000000),
                    onTap:() {},
                  ))),
        ],
      ),
      margin: const EdgeInsets.all(10),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius)),
    );
  }
}
