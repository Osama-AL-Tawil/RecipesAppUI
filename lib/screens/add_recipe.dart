import 'dart:io';

import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:image_picker/image_picker.dart';
import 'package:recipes_project/widgets/button_widget.dart';
import 'package:recipes_project/widgets/colors.dart';
import 'package:recipes_project/widgets/text_field.dart';
import 'package:sizer/sizer.dart';

class AddRecipe extends StatefulWidget {
  const AddRecipe({Key? key}) : super(key: key);

  @override
  State<AddRecipe> createState() => _AddRecipeState();
}

class _AddRecipeState extends State<AddRecipe> {
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
    double borderRadius = 14;
    return Scaffold(
      appBar: AppBar(title: const Text('Add Recipe'),backgroundColor: orangeColor,),
      body: SingleChildScrollView(child: Column(
        children: [
          SizedBox(height: 3.h,),
          SizedBox(width: 150, height: 150,
              child:Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(borderRadius)),
                elevation: 3,
                child:InkWell(
                  hoverColor: Colors.black,
                  onTap:(){
                    if(image!=null){
                      removeImage();
                    }else{
                      pickImage();
                    }},
                  child:   Stack(alignment: Alignment.center,
                    children: [
                      image!=null? ClipRRect(borderRadius:BorderRadius.circular(borderRadius),child: Image.file(image!,fit:BoxFit.fill ,height: 150,width: 150,),):const SizedBox(),
                      image!=null?const Icon(Icons.close, color: orangeColor,size: 50,):
                      const Icon(Icons.add, color: grayColor,size: 50,)
                      ,
                    ],
                  ),

                ),)

          ),

          SizedBox(height: 3.h,),
          TextFieldWidget(
              hintText: 'Recipe Name',
              marginBottom: 20,
              onChanged: (value) => {recipeName = value}),
          SizedBox(
            width: MediaQuery.of(context).size.width-30,
            child:DropdownButtonFormField2(
              decoration: InputDecoration(
                //Add isDense true and zero Padding.
                //Add Horizontal padding using buttonPadding and Vertical padding by increasing buttonHeight instead of add Padding here so that The whole TextField Button become clickable, and also the dropdown menu open under The whole TextField Button.
                isDense: true,
                contentPadding: EdgeInsets.zero,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),

              ),
              isExpanded: true,
              hint: const Text(
                'Select Recipe Category',
                style: TextStyle(fontSize: 14),
              ),
              icon: const Icon(
                Icons.arrow_drop_down,
                color: Colors.black45,
              ),
              iconSize: 30,
              buttonHeight: 50,
              buttonPadding: const EdgeInsets.only(left: 20, right: 10),
              dropdownDecoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
              ),
              items: categories
                  .map((item) =>
                  DropdownMenuItem<String>(
                    value: item,
                    child: Text(
                      item,
                      style: const TextStyle(
                        fontSize: 14,
                      ),
                    ),
                  ))
                  .toList(),
              validator: (value) {
                if (value == null) {
                  return 'Please select Category';
                }
              },
              onChanged: (value) {
                //Do something when changing the item if you want.
              },

            ),),
          SizedBox(height: 2.h,),
          TextFieldWidget(
            hintText: 'description',
            onChanged: (value) => {recipeName = value},marginBottom: 10,maxLines: 6,),
          SizedBox(height: 1.h,),
          ButtonWidget(label: "Create", press: (){}, textColor: whiteColor, backgroundColor: orangeColor)
        ],
      ),),
    );
  }
}
