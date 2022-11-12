import 'package:clothes_app/Layout/Clothes_Cubit/cubit.dart';
import 'package:clothes_app/Layout/Clothes_Cubit/states.dart';
import 'package:clothes_app/Layout/Clothes_Layout/Clothes_Layout.dart';
import 'package:clothes_app/Modules/Login_Screen/Login_Screen.dart';
import 'package:clothes_app/Modules/Register_Screen/Register_Screen.dart';
import 'package:clothes_app/Modules/Splash_Screen.dart';
import 'package:clothes_app/shared/bloc_observer.dart';
import 'package:clothes_app/shared/network/Cach_Helper/cach_helper.dart';
import 'package:clothes_app/shared/network/remote/Dio_Helper/Dio_Helper.dart';
import 'package:clothes_app/shared/styles/themes/ThemeData.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  Bloc.observer = MyBlocObserver();
  DioHelper.init();
  await CachHelper.init();
  bool isDark = CachHelper.getBool(key: 'isDark');

  runApp(MyApp(isDark));
}
class MyApp extends StatelessWidget{
  final bool isDark;
  MyApp(this.isDark);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => Clothes_Cubit()..ChangeAppMode(
        isBlackMode: isDark,
      ),
      child: BlocConsumer<Clothes_Cubit,Clothes_States>(
        listener: (context,state){},
        builder: (context,state){
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: LightTheme,
            darkTheme: darkTheme,
            themeMode: Clothes_Cubit.get(context).isDark ? ThemeMode.dark : ThemeMode.light,
            home: Splash_Screen(),
          );
        },
      ),
    );
  }

}
