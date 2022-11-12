import 'package:bloc/bloc.dart';
import 'package:clothes_app/Layout/Clothes_Cubit/states.dart';
import 'package:clothes_app/Layout/Search_Layout/Search_Layout.dart';
import 'package:clothes_app/Modules/Home_Screen/Home_Screen.dart';
import 'package:clothes_app/Modules/Setting_Screen/Setting_Screen.dart';
import 'package:clothes_app/shared/network/Cach_Helper/cach_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Clothes_Cubit extends Cubit<Clothes_States> {
  Clothes_Cubit() : super(ClothesIntialState());

  static Clothes_Cubit get(context) => BlocProvider.of(context);

  List<Widget> screens = [
    Home_Screen(),
    Search_Layout(),
    Setting_Screen(),
  ];
  List<String> titles = [
    'H&M',
    'Search',
    'Settings',
  ];
  int currentIndex = 0;

  bool isSecure = true;
  IconData suffix = Icons.visibility;

  void ChangeCreditCardSecure(){
    isSecure = !isSecure;
    suffix = isSecure ? Icons.visibility : Icons.visibility_off;
    emit(ChangSecure());
  }


  void ChangeBottomNavigation(int index) {
    currentIndex = index;
    emit(ChangeBottomNavigationBar());
  }

  int count = 1;
  void ChangeITemCountPluss(){
    count ++ ;
    emit(ChangeItemCount());
  }
  void ChangeITemCountMinus(){
    if(count > 0 && count > 1)
      count -- ;
    emit(ChangeItemCount());
  }

  bool isFav = false;
  IconData iconFav = Icons.favorite_outline_outlined;
  void ChangFav() {
    isFav = !isFav;
    iconFav = isFav ? Icons.favorite_outline_outlined :  Icons.favorite;
    emit(ChangeFavBottom());
  }

  bool isDark = false;
  void ChangeAppMode({bool? isBlackMode}){
    if(isBlackMode != null){
      isDark = isBlackMode ;
      emit(ChangeAppModeState());
    }else{
      isDark = !isDark;
      CachHelper.putData(value: isDark, key: 'isDark').then((value){
        emit(ChangeAppModeState());
      });
    }
  }


  var valueSize = 'S';

  void DropDownOnChangeSize(value){
    value = valueSize;
    emit(DropDownOnChangeSizeState());
  }

  var valueGender = 'Male';

  void DropDownOnChangeGender(value){
    value = valueGender;
    emit(DropDownOnChangeGenderState());
  }


  var valueLang = 'English';

  void DropDownOnChangeLanguage(value){
    value = valueLang;
    emit(DropDownOnChangeLanguageState());
  }
}
