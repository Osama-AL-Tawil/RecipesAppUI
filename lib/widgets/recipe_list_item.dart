import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:recipes_project/widgets/colors.dart';
import 'package:sizer/sizer.dart';

class RecipeListItem extends StatelessWidget {
  final bool isHome;
  const RecipeListItem({Key? key,required this.isHome}) : super(key: key);

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
                Positioned(
                    top: 6,
                    right: 7,
                    child: SizedBox(
                      width: width,
                      child: Align(
                          alignment: Alignment.centerRight,
                          child: Stack(
                            children: [
                              isHome? SvgPicture.asset('assets/ic_favorite_w.svg', height: 2.h, width: 2.h):SvgPicture.asset('assets/ic_favorites_o.svg',
                                  height: 3.h, width: 3.h),
                              Positioned.fill(
                                  child: Material(
                                      color: Colors.transparent,
                                      child: InkWell(
                                        borderRadius: BorderRadius.circular(10),
                                        hoverColor: const Color(0x40000000),
                                        onTap: () {

                                        },
                                      )))
                            ],
                          )),
                    )),
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
                padding: const EdgeInsets.only(left: 5, top: 1, bottom: 2),
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
