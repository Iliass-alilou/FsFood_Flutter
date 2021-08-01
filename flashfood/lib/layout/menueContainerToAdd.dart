import 'package:flashfood/models/SpecificMenu.dart';
import 'package:flutter/material.dart';

Widget MenueContainerToAdd(Specific_Menu menu)=> Row(
  children: [
    CircleAvatar(
      radius: 40.0,
      backgroundImage: AssetImage(
        '${menu.photo_Product}',
      ),
    ),
    SizedBox(
      width: 10.0,
    ),
    Column(
      children: [
        Container(
          width: 281,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '${menu.nameProduct}',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 18.0,
                ),
              ),
              Text(
                '${menu.productPrice}',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 18.0,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 30.0,
        ),
        Container(
          width: 280,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 30.0,
                width: 30.0,
                child: FloatingActionButton(
                  onPressed: (){

                  },

                  mini: true,
                  child: Icon(
                    Icons.add,
                    color: Color(0xff278330),
                  ),
                  heroTag: 'add',
                  backgroundColor: Color(0xffD3EFEF),
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  ],
);