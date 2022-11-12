import 'dart:io';

import 'package:clothes_app/Layout/Clothes_Cubit/cubit.dart';
import 'package:clothes_app/Layout/Clothes_Cubit/states.dart';
import 'package:clothes_app/shared/styles/colors.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutUs_Screen extends StatelessWidget {
  const AboutUs_Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<Clothes_Cubit,Clothes_States>(
      listener: (context,state){},
      builder: (context,state){
        return Scaffold(
          appBar: AppBar(
            leading: IconButton(onPressed: (){
              Navigator.pop(context);
            }, icon: Icon(Icons.arrow_back_ios_new_rounded)),
          ),
          body: Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Container(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Our WebSites',
                    style: TextStyle(
                        fontFamily: 'Soka',
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      color: Clothes_Cubit.get(context).isDark ? Colors.white : Colors.black
                    ),
                  ),
                  SizedBox(height: 10,),
                  ElevatedButton(
                    onPressed: ()async{
                      final url = 'https://www.linkedin.com/in/adel-mostafa-766296234/';
                      if(await canLaunch(url)){
                        await launch(url);
                      }else{
                        throw 'connt';
                      };
                    },
                    child: Text(
                      'Linked In',
                      style: TextStyle(
                          fontSize: 35,
                          fontFamily: 'Soka'
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  ElevatedButton(
                    onPressed: ()async{
                      final url = 'https://www.facebook.com/profile.php?id=100006629088109';
                      if(await canLaunch(url)){
                        await launch(url);
                      }else{
                        throw 'connt';
                      };
                    },
                    child: Text(
                      'Facebook',
                      style: TextStyle(
                          fontSize: 35,
                          fontFamily: 'Soka'
                      ),
                    ),
                    style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.blue),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
