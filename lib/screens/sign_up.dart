import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:recipes_project/screens/sign_in.dart';
import 'package:recipes_project/widgets/ButtonText.dart';
import 'package:recipes_project/widgets/auth/background.dart';
import 'package:recipes_project/widgets/auth/title.dart';
import 'package:recipes_project/widgets/button_widget.dart';
import 'package:recipes_project/widgets/password_field.dart';
import 'package:recipes_project/widgets/text_field.dart';

import '../main.dart';
import '../widgets/colors.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignupState();
}

class _SignupState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController nameController = TextEditingController();
    TextEditingController phoneController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    return Scaffold(
      body: SingleChildScrollView(
        reverse: false,
        child: Column(
          children: [
            const AuthBackground(),
            Column(
              children: [
                const AuthTitle(title: 'SIGN UP'),
                const SizedBox(height: 20,),
                TextFieldWidget(hintText: 'FullName', onChanged: (value) {}),
                TextFieldWidget(hintText: 'Email', onChanged: (value) {}),
                TextFieldWidget(hintText: 'Phone', onChanged: (value) {}),
                PasswordFieldWidget(hintText: 'Password', onChanged: (value) {}),
                ButtonWidget(label: 'SignUp',textColor: whiteColor,backgroundColor: orangeColor, press: (){Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const MyHomePage(title: 'title')));}),
                const SizedBox(height: 10),
                ButtonTextWidget(text: 'Do you have account? SignIn', press: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const SignInPage()));
                })
              ],
            ),
          ],
        ),
      ),
    );
  }
}
