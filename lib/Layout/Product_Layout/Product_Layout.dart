import 'package:clothes_app/Layout/Clothes_Cubit/cubit.dart';
import 'package:clothes_app/Layout/Clothes_Cubit/states.dart';
import 'package:clothes_app/Modules/Payment_Screen/Payment_Screen.dart';
import 'package:clothes_app/shared/components/components.dart';
import 'package:clothes_app/shared/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Product_Layout extends StatelessWidget {
  final imageOfProduct;
  final nameOfProduct;
  final costOfProduct;

  Product_Layout(
      {super.key,
      required this.imageOfProduct,
      required this.nameOfProduct,
      required this.costOfProduct});

  List<String> ItemSize = [
    'S',
    'M',
    'L',
    'XL',
    'XXL',
  ];

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<Clothes_Cubit, Clothes_States>(
      listener: (context, state) {},
      builder: (context, state) {
        var cubit = Clothes_Cubit.get(context);
        return Scaffold(
          body: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                      '${imageOfProduct}',
                    ),
                    fit: BoxFit.cover,
                    opacity: 0.7,
                    colorFilter:
                        ColorFilter.mode(Colors.black26, BlendMode.colorBurn))),
            child: Container(
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.only(top: 30.0),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          IconButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              icon: Icon(
                                Icons.arrow_back_ios_new_rounded,
                                color: Colors.white.withOpacity(0.6),
                              )),
                          Spacer(),
                          IconButton(
                              onPressed: () {
                                cubit.ChangFav();
                              },
                              icon: Icon(
                                cubit.iconFav,
                                color: defualtColor(),
                                size: 35,
                              )),
                        ],
                      ),
                    ),
                    Container(
                      height: 600,
                      child: SingleChildScrollView(
                        scrollDirection:Axis.horizontal,
                        physics: BouncingScrollPhysics(),
                        child: Row(
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 8.0),
                                      child: Container(
                                        height: 50,
                                        decoration: BoxDecoration(
                                          color: Colors.red.withOpacity(0.6),
                                          borderRadius: BorderRadius.circular(10),
                                        ),
                                        child: Row(
                                          children: [
                                            Text(
                                              'Name : ${nameOfProduct}',
                                              style: TextStyle(
                                                  fontFamily: 'Soka',
                                                  fontSize: 20,
                                                  color: Colors.white),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 8.0),
                                      child: Container(
                                        height: 50,
                                        decoration: BoxDecoration(
                                            color: Colors.red.withOpacity(0.6),
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        child: Row(
                                          children: [
                                            Text(
                                              'Cost : ${costOfProduct}',
                                              style: TextStyle(
                                                  fontFamily: 'Soka',
                                                  fontSize: 20,
                                                  color: Colors.white),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 8.0),
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 50,
                                        width: 80,
                                        decoration: BoxDecoration(
                                            color: Colors.red.withOpacity(0.6),
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        child: Center(
                                          child: Text(
                                            'SIZE',
                                            style: TextStyle(
                                                fontFamily: 'Soka',
                                                fontSize: 20,
                                                color: Colors.white),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      Container(
                                        height: 50,
                                        width: 120,
                                        decoration: BoxDecoration(
                                            color: Colors.red.withOpacity(0.6),
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        child: Center(
                                          child: DropdownButton(
                                            items: [
                                              'S',
                                              'M',
                                              'L',
                                              'XL',
                                              'XXL',
                                            ]
                                                .map((e) => DropdownMenuItem(
                                                      child: Text('$e'),
                                                      value: e,
                                                    ))
                                                .toList(),
                                            onChanged: (value) {
                                              cubit.valueSize = value!;
                                              cubit.DropDownOnChangeSize(value);
                                            },
                                            value: cubit.valueSize,
                                            style: TextStyle(fontSize: 20),
                                            dropdownColor: Colors.black.withOpacity(0.8),
                                            icon: Icon(Icons.person),
                                            iconEnabledColor: Colors.white,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 8.0),
                                      child: Container(
                                        height: 50,
                                        width: 160,
                                        decoration: BoxDecoration(
                                            color: Colors.red.withOpacity(0.6),
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        child: Center(
                                          child: Text(
                                            'COUNT OF IT',
                                            style: TextStyle(
                                                fontFamily: 'Soka',
                                                fontSize: 20,
                                                color: Colors.white),
                                          ),
                                        ),
                                      ),
                                    ),
                                    CircleAvatar(
                                      radius: 20,
                                      backgroundColor:
                                          Colors.red.withOpacity(0.6),
                                      child: IconButton(
                                          onPressed: () {
                                            cubit.ChangeITemCountPluss();
                                          },
                                          icon: Icon(
                                            Icons.add,
                                            size: 25,
                                            color: Colors.white,
                                          )),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      '${cubit.count}',
                                      style: TextStyle(
                                          fontSize: 50, color: Colors.white),
                                    ),
                                    SizedBox(
                                      width: 22,
                                    ),
                                    CircleAvatar(
                                      radius: 20,
                                      backgroundColor:
                                          Colors.red.withOpacity(0.6),
                                      child: IconButton(
                                          onPressed: () {
                                            cubit.ChangeITemCountMinus();
                                          },
                                          icon: Icon(
                                            Icons.remove,
                                            size: 25,
                                            color: Colors.white,
                                          )),
                                    ),
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    defaultButton(
                        backgroundColor: Colors.red.withOpacity(0.6),
                        height: 60,
                        width: 150,
                        topRightBorder: 0,
                        bottomLeftBorder: 0,
                        text: 'buy it',
                        OnPressedFunction: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Payment_Screen()));
                        })
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
