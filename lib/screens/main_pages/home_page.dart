import 'package:flutter/cupertino.dart';
import 'package:recipes_project/Classes/SilverGridFixedHeight.dart';
import 'package:recipes_project/widgets/recipe_list_item.dart';
import 'package:sizer/sizer.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List itemList = [
      RecipeListItem(isHome: true),
      RecipeListItem(isHome: true),
      RecipeListItem(isHome: true),
      RecipeListItem(isHome: true),
      RecipeListItem(isHome: true),
      RecipeListItem(isHome: true),
      RecipeListItem(isHome: true),
      RecipeListItem(isHome: true),
    ];

    return GridView.builder(
      shrinkWrap: true,
      itemCount: itemList.length,
      itemBuilder: (context,index)=>itemList[index],
        gridDelegate:  const SliverGridDelegateWithFixedCrossAxisCountAndFixedHeight(
            // mainAxisSpacing: 40,
            // crossAxisSpacing: 24,
            crossAxisCount: 2,height:250),

    );
  }
}
