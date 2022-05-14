import 'package:provider/provider.dart';
import 'package:recipes_project/screens/add_recipe.dart';
import 'package:recipes_project/screens/welcome_info.dart';
import 'package:recipes_project/widgets/password_field.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:recipes_project/screens/sign_in.dart';
import 'package:recipes_project/screens/main_pages/categories_page.dart';
import 'package:recipes_project/screens/main_pages/favorite_page.dart';
import 'package:recipes_project/screens/main_pages/home_page.dart';
import 'package:recipes_project/screens/main_pages/profile_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create:(_)=>PasswordToggleProvider())

    ],
    child:Sizer(builder: (context, orientation, deviceType) {
    return MaterialApp(
    title: 'Flutter Demo',
    theme: ThemeData(
    primarySwatch: Colors.deepOrange,
    ),
    //home: const MyHomePage(title: 'Flutter Demo Home Page'),
    home: const WelcomePage(),
    );
    }));
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentIndex = 0;
  final screens = [
    const HomePage(),
    const CategoriesPage(),
    const FavoritePage(),
    const ProfilePage(),
  ];

  final screenNames = ['Home', 'Categories', 'Favorite', 'Profile'];

  @override
  Widget build(BuildContext context) {
    bool isHomePage = currentIndex == 0;
    AppBar? showAppBar;
    if(screenNames[currentIndex]=='Profile'){
      showAppBar=null;
    }else{
      showAppBar=AppBar(
          title: Text(screenNames[currentIndex]),
          backgroundColor: const Color(0xFFFA4B4B),
          actions: isHomePage ? <Widget>[IconButton(
              icon: SvgPicture.asset('assets/ic_add.svg'),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const AddRecipe()));
              },
            )] : null);
    }
    return Scaffold(
      appBar: showAppBar,

      //To Save Screen State
      body: IndexedStack(
        index: currentIndex,
        children: screens,
      ),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        type: BottomNavigationBarType.fixed,
        onTap: (index) => setState(() {
          currentIndex = index;
        }),
        items: [
          BottomNavigationBarItem(
              icon: SvgPicture.asset("assets/navigation/ic_nav_home.svg"),
              label: "Home",
              activeIcon:
                  SvgPicture.asset("assets/navigation/ic_nav_home_c.svg")),
          BottomNavigationBarItem(
              icon: SvgPicture.asset("assets/navigation/ic_nav_category.svg"),
              label: "Categories",
              activeIcon:
                  SvgPicture.asset("assets/navigation/ic_nav_category_c.svg")),
          BottomNavigationBarItem(
              icon: SvgPicture.asset("assets/navigation/ic_nav_favorite.svg"),
              label: "Favorite",
              activeIcon:
                  SvgPicture.asset("assets/navigation/ic_nav_favorite_c.svg")),
          BottomNavigationBarItem(
              icon: SvgPicture.asset("assets/navigation/ic_nav_profile.svg"),
              label: "Profile",
              activeIcon:
                  SvgPicture.asset("assets/navigation/ic_nav_profile_c.svg")),
        ],
        showUnselectedLabels: true,
        selectedItemColor: const Color(0xFFFA4B4B),
        unselectedItemColor: const Color(0xFFC8C7CC),
        selectedFontSize: 13,
      ),
    );
  }
}
