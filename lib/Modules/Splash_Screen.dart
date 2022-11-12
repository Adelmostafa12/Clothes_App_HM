import 'dart:async';

import 'package:clothes_app/Layout/Clothes_Cubit/cubit.dart';
import 'package:clothes_app/Layout/Clothes_Cubit/states.dart';
import 'package:clothes_app/Layout/Clothes_Layout/Clothes_Layout.dart';
import 'package:clothes_app/Modules/OnBording_Screen/OnBording_Screen.dart';
import 'package:clothes_app/shared/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Splash_Screen extends StatefulWidget {
  const Splash_Screen({Key? key}) : super(key: key);

  @override
  State<Splash_Screen> createState() => _Splash_ScreenState();
}

class _Splash_ScreenState extends State<Splash_Screen> {
  void initState(){
    super.initState();
    Timer(
        Duration(seconds: 3),
            ()=>Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=> OnBording_Screen()
        )
        )
    );
  }

  @override
  Widget build(BuildContext context) {

    return BlocConsumer<Clothes_Cubit,Clothes_States>(
      listener: (context,state){},
      builder: (context,state){
        return Scaffold(
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Container(
                    child: Text(
                      'H&M',
                      style: TextStyle(
                        fontSize: 100,
                        color: defualtColor()
                      ),
                    )
                ),
              )
            ],
          ),
        );
      },
    );
  }
}