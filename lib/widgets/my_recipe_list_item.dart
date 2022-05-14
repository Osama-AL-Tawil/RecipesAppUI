import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:recipes_project/widgets/colors.dart';
import 'package:sizer/sizer.dart';

class MyRecipeListItem extends StatelessWidget {
  const MyRecipeListItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double cornerRadius = 6;
    return Card(
      child: InkWell(
        onTap: () {},
        borderRadius: BorderRadius.circular(cornerRadius),
        hoverColor: Colors.black,
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
                    height: 18.h,
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
            SizedBox(
              width: width,
              child: Padding(
                padding: const EdgeInsets.only(left: 5, top: 8),
                child: Text(
                  'Data',
                  style:
                      TextStyle(fontSize: 13.sp, fontWeight: FontWeight.w500),
                  textAlign: TextAlign.start,
                ),
              ),
            ),
            SizedBox(
              width: width,
              child: Padding(
                padding: const EdgeInsets.only(left: 5, top: 0, bottom: 0),
                child: Row(children: [
                    Expanded(
                      flex: 1,
                      child: Text(
                        'Is simply dummy',
                        style: TextStyle(
                            fontSize: 10.sp,
                            color: grayColor,
                            fontWeight: FontWeight.w400),
                        textAlign: TextAlign.start,
                        maxLines: 1,
                      ),
                    ),
                    Stack(
                      children: [
                        SvgPicture.asset('assets/ic_trash.svg',
                            height: 25, width: 25),
                        Positioned.fill(
                            child: Material(
                                color: Colors.transparent,
                                child: InkWell(
                                  onTap: () {},
                                  hoverColor: grayColor,
                                )))
                      ],
                    ),
                    const SizedBox(width: 3,),
                    Stack(
                    children: [
                      SvgPicture.asset('assets/ic_edit.svg',
                          height: 25, width: 25),
                      Positioned.fill(
                          child: Material(
                              color: Colors.transparent,
                              child: InkWell(
                                onTap: () {},
                                hoverColor: grayColor,
                              )))
                    ],
                  ),
                    const SizedBox(width: 4,),


                ],),
              ),
            ),
          ],
        ),
      ),
      margin: const EdgeInsets.all(10),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(cornerRadius)),
    );
  }
}
