import 'package:flutter/cupertino.dart';

import '../../Classes/SilverGridFixedHeight.dart';
import '../../widgets/recipe_list_item.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List itemList = [
      RecipeListItem(isHome: false),
      RecipeListItem(isHome: false),
      RecipeListItem(isHome: false),
      RecipeListItem(isHome: false),
      RecipeListItem(isHome: false),
      RecipeListItem(isHome: false),
      RecipeListItem(isHome: false),
      RecipeListItem(isHome: false),
      RecipeListItem(isHome: false),
      RecipeListItem(isHome: false),
      RecipeListItem(isHome: false),

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
