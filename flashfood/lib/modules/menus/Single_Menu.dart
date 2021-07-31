import 'package:flashfood/modules/menus/Menu_Pear_Restaurant.dart';
import 'package:flutter/material.dart';

class SinglMenu_For_Collection extends StatelessWidget {
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
                builder: (context)=>Menu_Pear_Restaurant(),
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
      body: Padding(
        padding: const EdgeInsets.all(20.0),
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
                width: 350.0,
                height: 1.5,
                color: Color(0xff000000),
              ),
              SizedBox(
                height: 40.0,
              ),
              Row(
                children: [
                  CircleAvatar(
                    radius: 40.0,
                    backgroundImage: AssetImage(
                      'assets/images/burger_1.jpg',
                    ),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            'Creamy BBQ Beef',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 18.0,
                            ),
                          ),
                          Text(
                            '55.00 MAD',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 18.0,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
