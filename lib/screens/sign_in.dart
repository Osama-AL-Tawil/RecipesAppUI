import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:recipes_project/main.dart';
import 'package:recipes_project/screens/sign_up.dart';
import 'package:recipes_project/widgets/ButtonText.dart';
import 'package:recipes_project/widgets/auth/background.dart';
import 'package:recipes_project/widgets/auth/title.dart';
import 'package:recipes_project/widgets/button_widget.dart';
import 'package:recipes_project/widgets/colors.dart';
import 'package:recipes_project/widgets/password_field.dart';
import 'package:recipes_project/widgets/text_field.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);
  @override
  State<SignInPage> createState()=>_SignInState();
}
class _SignInState extends State<SignInPage>{

  @override
  Widget build(BuildContext context) {
    bool status=false;
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
     update(){

      print(status);
    }

    return Scaffold(
      body: SingleChildScrollView(child: Column(
        children: [
          const AuthBackground(),
         Column(
              children: [
                const AuthTitle(title: 'SIGN IN'),
                const SizedBox(
                  height: 20,
                ),
                TextFieldWidget(hintText: 'Email', onChanged: (value){}),
                PasswordFieldWidget(hintText: 'Password', onChanged: (value){}),
                ButtonWidget(label: 'SignIn',textColor: whiteColor,backgroundColor: orangeColor, press: (){Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const MyHomePage(title: 'title')));}),
                const SizedBox(height: 20,),
                TextButton(onPressed: () =>{} , child: const Text('Forget Password ?')),
                const SizedBox(height: 20,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Connect With',style: TextStyle(fontSize: 14,fontWeight:FontWeight.normal,color: orangeColor),),
                    const SizedBox(
                      width: 15,
                    ),
                    IconButton(
                        onPressed: () => {},
                        icon: SvgPicture.asset('assets/ic_facebook.svg')),
                    const SizedBox(
                      width: 5,
                    ),
                    IconButton(
                        onPressed: () => {},
                        icon: SvgPicture.asset('assets/ic_twitter.svg'))
                  ],
                ),
                ButtonTextWidget(text: 'Do not have an account? Sign up', press: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const SignUpPage()));
                }),

              ],
            ),
        ],
      ),),
    );
  }
}

