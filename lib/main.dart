import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/Cart/cart_screen.dart';
import 'package:flutter_auth/Screens/HomePage/home_page_screen.dart';
import 'package:flutter_auth/Screens/Location/location_screen.dart';
import 'package:flutter_auth/Screens/LogIn/login_screen.dart';
import 'package:flutter_auth/Screens/Profile/profile_screen.dart';
import 'package:flutter_auth/Screens/Search/Search_screen.dart';
import 'package:flutter_auth/Screens/SignUp/signup_screen.dart';
import 'package:flutter_auth/constants.dart';
import 'package:get/get.dart';
import 'Screens/Welcome/welcome_screen.dart';

//Hello from the other side :)

//there is such a diffrent between us

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter_Demo',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Colors.white,
      ),

      home: LoginScreen(), // WelcomeScreen(),
      getPages: [
        GetPage(name: "/", page: () => WelcomeScreen()),
        GetPage(name: "/login", page: () => LoginScreen()),
        GetPage(name: "/signup", page: () => SignUpScreen()),
        // GetPage(name: "/homepage", page: () => HomePage()),
        GetPage(name: "/location", page: () => LocationScreen()),
        GetPage(name: "/profile", page: () => ProfileScreen()),
        GetPage(name: "/cart", page: () => CartScreen()),
        GetPage(name: "/search", page: () => SearchScreen()),
      ],
    );
  }
}
