import 'dart:io';

import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:image_picker/image_picker.dart';
import 'package:recipes_project/widgets/button_widget.dart';
import 'package:recipes_project/widgets/colors.dart';
import 'package:recipes_project/widgets/outline_button_widget.dart';
import 'package:recipes_project/widgets/text_field.dart';
import 'package:sizer/sizer.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  String? recipeName;
  List<String> categories = ['c1', 'c2', 'c3', 'c4'];
  String? selectedItem = 'c1';
  File? image;

  removeImage() {
    setState(() => {image = null});
    Fluttertoast.showToast(msg: 'Image removed Successfully',backgroundColor: grayColor);
  }

  Future pickImage() async{
    try{
      final image = await ImagePicker().pickImage(source: ImageSource.gallery);
      if(image==null)return;
      final imageTemporary = File(image.path);
      setState(()=>{this.image =imageTemporary});
    }on PlatformException catch(e){
      Fluttertoast.showToast(msg: e.toString());
    }

  }

  @override
  Widget build(BuildContext context) {
    TextEditingController  email = TextEditingController(text: '');
    TextEditingController  userName = TextEditingController(text: '');
    TextEditingController  phoneNumber = TextEditingController(text: '');

    return Scaffold(
      appBar: AppBar(title: const Text('Edit Profile'),backgroundColor: orangeColor,),
      body: SingleChildScrollView(child: Column(
        children: [
          SizedBox(height: 3.h,),
          CircleAvatar(backgroundImage: image!=null?FileImage(image!):null,child:InkWell(
            hoverColor: Colors.black,
            onTap:(){
              if(image!=null){
                removeImage();
              }else{
                pickImage();
              }},
            child:Stack(alignment: Alignment.center,
              children: [
                image!=null?const Icon(Icons.close, color: whiteColor,size: 50,):
                const Icon(Icons.add, color: grayColor,size: 50,)
              ],
            ),

          ) ,radius: 70),
          SizedBox(height: 3.h,),
          TextFieldWidget(
              hintText: 'UserName',
              marginBottom: 15,
              controller: userName,
              onChanged: (value) => {recipeName = value}),
          TextFieldWidget(
            hintText: 'Email',
            controller: email,
            onChanged: (value) => {recipeName = value},marginBottom: 15,),
          TextFieldWidget(
            hintText: 'PhoneNumber',
            controller: phoneNumber,
            onChanged: (value) => {recipeName = value},marginBottom: 10,),
          SizedBox(height: 1.h,),
          OutlineButtonWidget(label: 'Edit Password', backgroundColor: whiteColor, borderColor: orangeColor, onPressed: (){}),
          SizedBox(height: 2.h,),
          ButtonWidget(label: "SAVE", press: (){}, textColor: whiteColor, backgroundColor: orangeColor)
        ],
      ),),
    );
  }
}
