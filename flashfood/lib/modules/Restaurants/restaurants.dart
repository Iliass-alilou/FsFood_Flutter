import 'package:flashfood/models/restaurants.dart';
import 'package:flashfood/modules/Seat/DefineByYourSeat.dart';
import 'package:flashfood/modules/menus/Menu_Pear_Restaurant.dart';
import 'package:flutter/material.dart';


class Restaurants extends StatefulWidget {
  @override
  _RestaurantsState createState() => _RestaurantsState(
      //restaurants: restaurants
  );
}

class _RestaurantsState extends State<Restaurants> {
  List <ModelRestaurant> rests = [
    ModelRestaurant(
        photo: 'assets/images/burgerKing.png',
        NameRestaurant : "Burger King",
        PrincipalDish : "Burger",
        rating : "96.3%",
        DeleveryPrice : "3Dhs",
        DeleveryTime : "10 - 15min"
    ),
    ModelRestaurant(
        photo: 'assets/images/tacos_nice.png',
        NameRestaurant : "Tacos de Nice",
        PrincipalDish : "Tacos",
        rating : "90%",
        DeleveryPrice : "3Dhs",
        DeleveryTime : "10 - 15min"
    ),
    ModelRestaurant(
        photo: 'assets/images/mc_donald.png',
        NameRestaurant : "McDonald's",
        PrincipalDish : "Burger-poulet",
        rating : "85%",
        DeleveryPrice : "3Dhs",
        DeleveryTime : "10 - 15min"
    ),
    ModelRestaurant(
        photo: 'assets/images/burgerKing.png',
        NameRestaurant : "McDonald's",
        PrincipalDish : "Burger-poulet",
        rating : "96.3%",
        DeleveryPrice : "3Dhs",
        DeleveryTime : "10 - 15min"
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xffC4C4C4),
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
                builder: (context)=>DefineByYourSeat(),
              ),
            );
          },

        ),
        title: Text(
          'Restaurants',
          style: TextStyle(
            color: Color(0xff000000),
            fontSize: 18,
            //centerTitle:
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
        child: Column(
          children: [
            Container(
              // width: double.infinity,
              height: 150.0,
              //margin:  EdgeInsets.only(bottom: 0.0),
              decoration: new BoxDecoration(
                color: Color(0xffC4C4C4),
                borderRadius: new BorderRadius.vertical(
                  bottom: new Radius.elliptical(
                      MediaQuery.of(context).size.width, 210.0
                  ),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 30.0,
                ),
                child: Row(
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
                              "Search for restaurant or product",
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
              ),
            ),
            ListView.separated(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context , index) =>Restaurant(rests[index]),
              separatorBuilder: (context , index) => SizedBox(
                height: 20.0,
              ),
              itemCount:rests.length,
            ),
          ],
        ),
      ),
    );
  }

  Widget Restaurant  (ModelRestaurant rest) => GestureDetector(
    onTap: (){
      Navigator.push(
          context,
        MaterialPageRoute(
          builder: (context)=>Menu_Pear_Restaurant(),
        ),
      );
    },
    child: Padding(
      padding: const EdgeInsets.only(
        left: 20.0,
        right: 20.0,
      ),
      child: Column(
        children: [
          Container(
            child: Container(
              height:140,
              width: 370.0,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 55.0,
                    vertical: 10.0
                ),
                child: Column(
                  children: [
                    Text(
                      '${rest.NameRestaurant}',
                      style: TextStyle(
                        color:Color(0xffFFFFFF),
                        fontSize: 40.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Container(
                      height: 8.0,
                      width: 180.0,
                      decoration: BoxDecoration(
                        color: Color(0xffFFFFFF),
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                    ),
                    SizedBox(
                      height: 9.0,
                    ),
                    Text(
                      '${rest.PrincipalDish}',
                      style: TextStyle(
                        color:Color(0xffFFFFFF),
                        fontSize: 21.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0,),
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(
                    '${rest.photo}',
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 5.0,
          ),
          Row(
            children: [
              Row(
                children: [
                  Icon(
                    Icons.star,
                    color: Color(0xffF1E816),
                  ),
                  SizedBox(
                    width: 5.0,
                  ),
                  Text(
                    '${rest.rating}',
                    style: TextStyle(
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ],
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(
                      Icons.directions_walk
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                    Container(
                      child: Text(
                        '${rest.DeleveryPrice}',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0,
                        ),
                      ),
                      decoration: BoxDecoration(
                        color: Color(0xffF0B53B),
                        borderRadius: BorderRadius.circular(5.0)
                      ),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      '${rest.DeleveryTime}',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    ),
  ) ;
}