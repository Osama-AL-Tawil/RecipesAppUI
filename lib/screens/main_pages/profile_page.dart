import 'package:flutter/material.dart';
import 'package:recipes_project/screens/edit_profile.dart';
import 'package:recipes_project/screens/my_recipes.dart';
import 'package:recipes_project/widgets/colors.dart';
import 'package:recipes_project/widgets/profile_widget.dart';
import 'package:sizer/sizer.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Stack(
          children: [
            Container(
              width: width,
              height: 35.h,
              color: orangeColor,
            ),
            Positioned(
              top: 5.h,
              child: SizedBox(width: width,
                  child: Row(
                children: [
                  Padding(padding: const EdgeInsets.only(left: 10),child: Text(
                    'Profile',
                    style: TextStyle(fontSize: 20.sp, color: whiteColor),
                  ),),
                  Expanded(
                      child: Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(onPressed: () {Navigator.of(context).push(MaterialPageRoute(builder: (context)=>EditProfile()));}, child: const Text(
                          'Edit',
                          style: TextStyle(color: whiteColor),
                        )),
                  ))
                ],
              )),
            ),
            Positioned(
                top: 14.h,
                child: SizedBox(width: width,child:
                Column(crossAxisAlignment:CrossAxisAlignment.center,children: [
                  const CircleAvatar(backgroundColor: Colors.black,radius: 50,),
                  SizedBox(height: 2.h,),
                  Text('UserName', style: TextStyle(fontSize: 15.sp, color: whiteColor),),

                ],),)
            )
          ],
        ),
        SizedBox(height:1.h),
        ProfileWidget(title: 'E-Mail', description: 'myrecipe@gmail.com', iconPath: 'assets/ic_email.svg'),
        SizedBox(height:1.h),
        ProfileWidget(title: 'Phone', description: '+972595613918', iconPath: 'assets/ic_phone.svg'),
        SizedBox(height:1.h),
        ProfileWidget(title: 'MyRecipes', iconPath: 'assets/ic_myrecipe.svg',withArrow:true
          ,pressed: (){Navigator.of(context).push(MaterialPageRoute(builder: (context)=>MyRecipePage()));},),
        SizedBox(height:1.h),
        ProfileWidget(title: 'Logout', iconPath: 'assets/ic_logout.svg',withArrow: true,),
      ],

    );
  }
}
