import 'package:flashfood/modules/menus/Single_Menu.dart';
import 'package:flutter/material.dart';

import 'modules/Restaurants/restaurants.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Restaurants(),
       //home: SinglMenu_For_Collection(),
    );
  }
}
