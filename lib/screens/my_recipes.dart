import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:recipes_project/widgets/colors.dart';
import 'package:recipes_project/widgets/my_recipe_list_item.dart';

import '../Classes/SilverGridFixedHeight.dart';

class MyRecipePage extends StatefulWidget {
  const MyRecipePage({Key? key}) : super(key: key);

  @override
  State<MyRecipePage> createState() => _MyRecipePageState();
}

class _MyRecipePageState extends State<MyRecipePage> {
  @override
  Widget build(BuildContext context) {
    List itemList = [
      MyRecipeListItem(),
      MyRecipeListItem(),
      MyRecipeListItem(),
      MyRecipeListItem(),
      MyRecipeListItem(),
      MyRecipeListItem(),
      MyRecipeListItem(),
      MyRecipeListItem(),
      MyRecipeListItem(),
      MyRecipeListItem(),

    ];

    return Scaffold(
      appBar: AppBar(title: const Text('My Recipe'),backgroundColor: orangeColor,),
      body: GridView.builder(
        shrinkWrap: true,
        itemCount: itemList.length,
        itemBuilder: (context,index)=>itemList[index],
        gridDelegate:  const SliverGridDelegateWithFixedCrossAxisCountAndFixedHeight(
          // mainAxisSpacing: 40,
          // crossAxisSpacing: 24,
            crossAxisCount: 2,height:255),

      ),
    );
  }
}
