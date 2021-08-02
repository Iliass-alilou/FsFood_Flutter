import 'package:flashfood/layout/menueContainerToAdd.dart';
import 'package:flashfood/models/CollectionMenu.dart';
import 'package:flashfood/models/SpecificMenu.dart';
import 'package:flashfood/modules/Restaurants/restaurants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Menu_Pear_Restaurant extends StatefulWidget {
  @override
  _Menu_Pear_RestaurantState createState() => _Menu_Pear_RestaurantState();
}

class _Menu_Pear_RestaurantState extends State<Menu_Pear_Restaurant> {

  List<Collection_Menu> collectionMenue =[
    Collection_Menu(
      NameCollection: "Novelties-BBQ PARTY !",
      photo1: "assets/images/burger_1.jpg",
      photo2: "assets/images/burger_2.jpg",
      photo3: "assets/images/burger_3.jpg",
    ),
    Collection_Menu(
        NameCollection: "Menus Tacos",
        photo1: "assets/images/tacos_1.jpg",
        photo2: "assets/images/tacos_2.jpg",
        photo3: "assets/images/tacos_3.jpg",
    ),
    Collection_Menu(
        NameCollection: "Menus Salades",
      photo1: "assets/images/salad_1.jpg",
      photo2: "assets/images/salad_2.jpg",
      photo3: "assets/images/salad_3.jpg",
    ),

  ];
  List <Specific_Menu> specific_menu =[
    Specific_Menu(
        photo_Product: "assets/images/burger_1.jpg",
        nameProduct:"Creamy BBQ Beef" ,
        productPrice: "30.00 MAD"
    ),
    Specific_Menu(
        photo_Product: "assets/images/burger_2.jpg",
        nameProduct:"double Smoky BBQ" ,
        productPrice: "35.00 MAD"
    ),
    Specific_Menu(
        photo_Product: "assets/images/burger_3.jpg",
        nameProduct:"creamy BBQ chicken" ,
        productPrice: "33.00 MAD"
    ),
    Specific_Menu(
        photo_Product: "assets/images/burger_1.jpg",
        nameProduct:"Creamy BBQ Beef" ,
        productPrice: "30.00 MAD"
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xffFFFFFF),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            size: 29,
            color: Color(0xff000000),
          ),
          onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context)=>Restaurants(),
              ),
            );
          },

        ),
        title: Text(
          'Burger King',
          style: TextStyle(
            color: Color(0xff000000),
            fontSize: 18,
            fontWeight: FontWeight.bold,
            fontFamily: 'rasa',
          ),
        ) ,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Container(
                  height: 35.0,
                  child: GestureDetector(
                    onTap: (){
                      print("it's Cart");
                    },
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 5.0,
                          ),
                          child: Icon(
                            Icons.shopping_cart_rounded,
                          ),
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              right: 5.0
                          ),
                          child: Text(
                            'Cart',
                            style: TextStyle(

                            ),
                          ),
                        ),
                        Container(
                          height: 35.0,
                          child: GestureDetector(
                            onTap: (){
                              print("it's Profile");
                            },
                            child: Row(
                              children: [
                                Icon(
                                  Icons.person,
                                ),
                                SizedBox(
                                  width: 5.0,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      right: 10.0
                                  ),
                                  child: Text(
                                    'Profile',
                                    style: TextStyle(

                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          decoration: BoxDecoration(
                            color: Color(0xffC42625),
                            borderRadius:BorderRadius.circular(16.0,),
                          ),
                        ),
                      ],
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Color(0xff1A1C2B),
                    borderRadius:BorderRadius.circular(16.0,),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0,),
                        color: Color(0xffF5F5F5),
                      ),
                      child: Row(
                        children: [
                          Icon(
                            Icons.search,
                            size: 25.0,
                          ),
                          SizedBox(
                            width: 15.0,
                          ),
                          Text(
                            "Search for a product",
                            style: TextStyle(
                              fontSize: 18.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30.0,
              ),

              /*   container */
              ListView.separated(
                 physics: NeverScrollableScrollPhysics(),
                 shrinkWrap: true,
                 itemBuilder: (context , index)  => collectionMenue[index].isSelected_Collection==true ?
                GestureDetector(
                  onTap: () {
                    setState(() {
                      collectionMenue[index].isSelected_Collection = false;
                    });
                  },
                  child: SingleChildScrollView(
                    child: Container(
                      width: 400.0,
                      child: Column(
                        children: [
                          Text(
                            'MENUS - BBQ PARTY',
                            style: TextStyle(
                              color: Color(0xff090808),
                              fontSize: 20.0,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(
                            height: 5.0,
                          ),
                          Container(
                            width: 370.0,
                            height: 1.5,
                            color: Color(0xff000000),
                          ),
                          SizedBox(
                            height: 40.0,
                          ),
                          ListView.separated(
                            physics: NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemBuilder: (context , index ) =>  MenueContainerToAdd(specific_menu[index]),
                            separatorBuilder: (context , index) => SizedBox(
                              height: 40.0,
                            ),
                            itemCount: specific_menu.length,
                          ),
                        ],
                      ),
                    ),
                  ),
                ) :  // else
                CollectionMenus(collectionMenue[index]),
                separatorBuilder: (context , index) => SizedBox(
                  height: 30.0,
                ),
                itemCount:collectionMenue.length,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget CollectionMenus (Collection_Menu collect) => GestureDetector(
    onTap: () {
      setState(() {
        collect.isSelected_Collection = true;
      });
    },
    child: Container(
      child: Column(
        children: [
          SizedBox(
            height: 10.0,
          ),
          Text(
            '${collect.NameCollection}',
            style: TextStyle(
              color: Color(0xff090808),
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 20.0,
              bottom: 20.0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 45.0,
                  backgroundImage: AssetImage(
                    '${collect.photo1}',
                  ),
                ),
                SizedBox(
                  width: 20.0,
                ),
                CircleAvatar(
                  radius: 45.0,
                  backgroundImage: AssetImage(
                    '${collect.photo2}',
                  ),
                ),
                SizedBox(
                  width: 20.0,
                ),
                CircleAvatar(
                  radius: 45.0,
                  backgroundImage: AssetImage(
                    '${collect.photo3}',
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
        color: Color(0xffFFFFFF),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
    ),
  );
}
