import 'package:flutter/cupertino.dart';
import 'package:recipes_project/widgets/category_list_item.dart';

import '../../Classes/SilverGridFixedHeight.dart';

class CategoriesPage extends StatelessWidget {
  const CategoriesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List itemList = [
     CategoryListItem(),
     CategoryListItem(),
     CategoryListItem(),
     CategoryListItem(),
     CategoryListItem(),
     CategoryListItem(),
     CategoryListItem(),
     CategoryListItem(),
     CategoryListItem(),
     CategoryListItem(),
     CategoryListItem(),
    ];

    return GridView.builder(
      shrinkWrap: true,
      itemCount: itemList.length,
      itemBuilder: (context,index)=>itemList[index],
      gridDelegate:  const SliverGridDelegateWithFixedCrossAxisCountAndFixedHeight(
        // mainAxisSpacing: 40,
        // crossAxisSpacing: 24,
          crossAxisCount: 2,height:150),

    );
  }
}
