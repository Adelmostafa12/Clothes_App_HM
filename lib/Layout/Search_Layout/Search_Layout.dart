import 'package:clothes_app/Layout/Clothes_Cubit/cubit.dart';
import 'package:clothes_app/Layout/Clothes_Cubit/states.dart';
import 'package:clothes_app/Modules/Divided_Screen/Divided_Screen.dart';
import 'package:clothes_app/Modules/Men_Screen/Men_Screen.dart';
import 'package:clothes_app/Modules/Sport_Screen/Sport_Screen.dart';
import 'package:clothes_app/Modules/Women_Screen/Women_Screen.dart';
import 'package:clothes_app/shared/components/components.dart';
import 'package:clothes_app/shared/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Search_Layout extends StatelessWidget {
  var searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<Clothes_Cubit,Clothes_States>(
      listener: (context,state){},
      builder: (context,state){
        var cubit = Clothes_Cubit.get(context);
        return DefaultTabController(
          length: 4,
          child: Scaffold(
            body: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    top: 25.0,
                    left: 25.0,
                    right: 25.0,
                  ),
                  child: TextFormField(
                    style: TextStyle(
                        fontSize: 30,
                        height: 1,
                        color: cubit.isDark ? Colors.white : Colors.black
                    ),
                    textDirection: TextDirection.ltr,
                    cursorHeight: 20,
                    autocorrect: true,
                    textAlign: TextAlign.start,
                    keyboardType: TextInputType.text,
                    controller: searchController,
                    decoration: InputDecoration(
                      label: Padding(
                        padding: const EdgeInsets.only(left: 40.0),
                        child: Text('Search'),
                      ),
                      labelStyle: TextStyle(fontSize: 30, color: defualtColor()),

                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                TabBar(
                  tabs: [
                    Text(
                      'Men',
                      style: TextStyle(
                          color: defualtColor(),
                          fontSize: 25,
                          fontFamily: 'Soka',
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Women',
                      style: TextStyle(
                          color: defualtColor(),
                          fontSize: 25,
                          fontFamily: 'Soka',
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Divided',
                      style: TextStyle(
                          color: defualtColor(),
                          fontSize: 25,
                          fontFamily: 'Soka',
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Sport',
                      style: TextStyle(
                          color: defualtColor(),
                          fontSize: 25,
                          fontFamily: 'Soka',
                          fontWeight: FontWeight.bold),
                    ),
                    // Text(
                    //   'Sale',
                    //   style: TextStyle(
                    //       color: defualtColor(),
                    //       fontSize: 25,
                    //       fontFamily: 'Soka',
                    //       fontWeight: FontWeight.bold),
                    // ),
                    // Text(
                    //   'Baby',
                    //   style: TextStyle(
                    //       color: defualtColor(),
                    //       fontSize: 25,
                    //       fontFamily: 'Soka',
                    //       fontWeight: FontWeight.bold
                    //   ),
                    // ),
                  ],
                  isScrollable: true,
                ),
                Expanded(
                  child: TabBarView(children: [
                    Men_Screen(),
                    Women_Screen(),
                    Divided_Screen(),
                    Sport_Screen()
                  ]),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
