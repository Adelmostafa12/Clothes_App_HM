import 'package:bloc/bloc.dart';
import 'package:clothes_app/Modules/Login_Screen/Login_Cubit/state.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Login_Cubit extends Cubit<Login_States> {
  Login_Cubit() : super(LoginIntialState());

  static Login_Cubit get(context)=>BlocProvider.of(context);

  bool isSecure = true;
  IconData suffix = Icons.visibility;
  void ChangeSecure(){
    isSecure = !isSecure;
    suffix = isSecure ? Icons.visibility : Icons.visibility_off ;
    emit(LoginChangeSecureIcon());
  }

  void userLogin({
  required String email,
  required String password,
}){
    emit(LoginLoadinState());
    FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
    ).then((value){
      print(value.user!.email);
      print(value.user!.uid);
      emit(LoginSuccessState());
    }).catchError((onError){
      print(onError.toString());
      emit(LoginErrorState(onError.toString()));
    });
  }
}