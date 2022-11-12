import 'package:clothes_app/Layout/Clothes_Cubit/cubit.dart';
import 'package:clothes_app/Layout/Clothes_Cubit/states.dart';
import 'package:clothes_app/Modules/AboutUs_Screen/AboutUs_Screen.dart';
import 'package:clothes_app/shared/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// ignore: camel_case_types
class Clothes_Layout extends StatelessWidget {
  const Clothes_Layout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<Clothes_Cubit, Clothes_States>(
      listener: (context, state) {},
      builder: (context, state) {
        var cubit = Clothes_Cubit.get(context);
        return Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text(
              cubit.titles[cubit.currentIndex],
              style: TextStyle(color: Colors.red),
            ),
          ),
          body: cubit.screens[cubit.currentIndex],
          bottomNavigationBar: BottomNavigationBar(
              iconSize: 30,
              currentIndex: cubit.currentIndex,
              onTap: (index) {
                cubit.ChangeBottomNavigation(index);
              },
              showSelectedLabels: false,
              showUnselectedLabels: false,
              type: BottomNavigationBarType.fixed,
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(Icons.other_houses_outlined),
                  label: "Home",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.search),
                  label: "Search",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.settings_rounded),
                  label: "Settings",
                ),
              ]),
          endDrawer: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context)=>AboutUs_Screen())
                  );
                },
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  width: 150,
                  height: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: defualtColor(),
                  ),
                  child: Row(
                    children: [
                      Icon(
                        Icons.account_circle,
                        size: 31,
                        color: cubit.isDark ? Colors.black : Colors.white,
                      ),
                      SizedBox(width: 8,),
                      Text(
                        'About Us',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 21,
                          fontFamily: 'Soka',
                          color: cubit.isDark ? Colors.black : Colors.white
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                width: 150,
                height: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: defualtColor(),
                ),
                child: Row(
                  children: [
                    Text(
                      'Dark',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 21,
                        fontFamily: 'Soka',
                        color: cubit.isDark ? Colors.black : Colors.white
                      ),
                    ),
                    Spacer(),
                    Switch(
                      value: cubit.isDark,
                      onChanged: (value) {
                        cubit.ChangeAppMode();
                      },
                      activeColor: Colors.white,
                    )
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
