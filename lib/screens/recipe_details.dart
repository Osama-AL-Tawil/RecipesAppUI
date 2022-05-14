import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:recipes_project/widgets/colors.dart';
import 'package:sizer/sizer.dart';

class RecipeDetails extends StatelessWidget {
  const RecipeDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: grayColor1,
      body: SingleChildScrollView(
          child: Column(
        children: [
          SizedBox(
            height: 45.h,
            child: Stack(
              children: [
                Image.network(
                  'https://static.vecteezy.com/packs/media/components/global/search-explore-nav/img/vectors/term-bg-1-666de2d941529c25aa511dc18d727160.jpg',
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.fitWidth,
                ),
                //SizedBox(,)
                Positioned(
                    top: 4.h,
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        children: [
                          IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: const Icon(Icons.arrow_back_ios),
                          ),
                          const Text('Back'),
                          Expanded(
                              child: Align(
                            alignment: Alignment.centerRight,
                            child:
                                SvgPicture.asset('assets/ic_favorites_o.svg'),
                          )),
                          SizedBox(
                            width: 2.w,
                          )
                        ],
                      ),
                    )),
                Positioned(
                    top: 35.h,
                    child: SvgPicture.asset('assets/image_shadow.svg',
                        width: MediaQuery.of(context).size.width,
                        fit: BoxFit.fitWidth))
              ],
            ),
          ),
          SizedBox(height: 1.h),

          Padding(
            padding: EdgeInsets.only(left: 2.w),
            child: Text('California Roll with Black Sesame',
                style: TextStyle(fontSize: 20.sp)),
          ), //Title
          SizedBox(height: 2.h),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Row(
              children: [
                SizedBox(width: 2.w),
                Text(
                  'DESCRIPTION',
                  style: TextStyle(fontSize: 10.sp),
                ),
                Expanded(
                    child: Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          'Category',
                          style: TextStyle(fontSize: 8.sp),
                        ))),
                SizedBox(width: 2.w),
              ],
            ),
          ),
          SizedBox(height: 2.h),
          Padding(
            padding: EdgeInsets.only(left: 2.w, right: 2.w),
            child: Text('Desc', textAlign: TextAlign.left),
          )
        ],
      )),
    );
  }
}
