import 'package:bloc/bloc.dart';
import 'package:clothes_app/Modules/Register_Screen/Register_Cubit/state.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Register_Cubit extends Cubit<Register_States> {
  Register_Cubit() : super(RegisterIntialState());

  static Register_Cubit get(context)=>BlocProvider.of(context);

  bool isSecure = true;
  IconData suffix = Icons.visibility;
  void ChangeSecure(){
    isSecure = !isSecure;
    suffix = isSecure ? Icons.visibility_off : Icons.visibility ;
    emit(RegisterChangeSecureIcon());
  }


  void userRegister({
  required String name,
  required String email,
  required String password,
  required String phone,
}){
    emit(RegisterLoadinState());
    FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
    ).then((value){
      emit(RegisterSuccessState());
    }).catchError((onError){
      print(onError.toString());
      emit(RegisterErrorState(onError.toString()));
    });
  }




}