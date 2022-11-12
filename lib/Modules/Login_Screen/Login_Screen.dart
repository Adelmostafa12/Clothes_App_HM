import 'package:clothes_app/Layout/Clothes_Layout/Clothes_Layout.dart';
import 'package:clothes_app/Modules/Login_Screen/Login_Cubit/cubit.dart';
import 'package:clothes_app/Modules/Login_Screen/Login_Cubit/state.dart';
import 'package:clothes_app/Modules/Register_Screen/Register_Screen.dart';
import 'package:clothes_app/shared/components/components.dart';
import 'package:clothes_app/shared/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Login_Screen extends StatelessWidget {
  var EmailController = TextEditingController();
  var PasswordController = TextEditingController();
  var FormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => Login_Cubit(),
      child: BlocConsumer<Login_Cubit, Login_States>(
        listener: (context, state) {
          if(state is LoginErrorState){
            ShowToast(
                message: state.error,
                state: ToastStates.ERORR
            );
          }
          if(state is LoginSuccessState){
            ShowToast(
                message: 'Login Success',
                state: ToastStates.SUCCESS
            );
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        Clothes_Layout()));
          }
        },
        builder: (context, state) {
          var cubit = Login_Cubit.get(context);
          return Scaffold(
              body: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/Images/photo.jpg'),
                    fit: BoxFit.cover,
                    opacity: 0.8,
                    colorFilter: ColorFilter.mode(
                        Colors.black.withOpacity(0.7), BlendMode.colorBurn))),
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 120.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'H&M',
                            style: TextStyle(fontSize: 80, color: Colors.red),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Form(
                              key: FormKey,
                              child: Container(
                                height: 1000,
                                clipBehavior: Clip.antiAlias,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(25)),
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 15.0, right: 15, top: 15),
                                      child: defaultFormField(
                                          fontLabelColor: Colors.white.withOpacity(0.6),
                                          type: TextInputType.emailAddress,
                                          fontInputColor: Colors.white.withOpacity(0.6),
                                          label: 'Email Address',
                                          controller: EmailController,
                                          prefix: Icons.email,
                                          Validatorfunction: (String? value) {
                                            if (value!.isEmpty) {
                                              return 'This Feild Must Not Be Embty';
                                            }
                                            return null;
                                          }),
                                    ),
                                    // SizedBox(height: 5,),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 15.0, right: 15, top: 15),
                                      child: defaultFormField(
                                        fontLabelColor: Colors.white.withOpacity(0.6),
                                        type: TextInputType.visiblePassword,
                                        label: 'Password',
                                        fontInputColor: Colors.white.withOpacity(0.6),
                                        controller: PasswordController,
                                        prefix: Icons.lock,
                                        suffix: cubit.suffix,
                                        isScure: cubit.isSecure,
                                        suffixPressedFunction: () {
                                          cubit.ChangeSecure();
                                        },
                                        Validatorfunction: (String? value) {
                                          if (value!.isEmpty) {
                                            return 'This Feild Must Not Be Embty';
                                          }
                                          return null;
                                        },
                                      ),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Row(
                                      children: [
                                        TextButton(
                                            onPressed: () {},
                                            child: Text(
                                              'Forget Your Password..?',
                                              style: TextStyle(
                                                  fontSize: 25,
                                                  fontWeight: FontWeight.bold),
                                            )),
                                        SizedBox(width:10 ,),
                                        Expanded(
                                          child:state is! LoginLoadinState
                                          ? defaultButton(
                                              topRightBorder: 0,
                                              bottomLeftBorder: 0,
                                              height: 50,
                                              text: 'login',
                                              fontsize: 30,
                                              OnPressedFunction: () {
                                                if (FormKey.currentState!.validate()) {
                                                  cubit.userLogin(
                                                      email: EmailController.text,
                                                      password: PasswordController.text
                                                  );
                                                }
                                              })
                                              : Center(child: CircularProgressIndicator()),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          'You Don\t Have An Account..?',
                                          style: TextStyle(
                                            fontSize: 25,
                                            color: Colors.white.withOpacity(0.6),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        TextButton(
                                            onPressed: () {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) => Register_Screen()));
                                            },
                                            child: Text(
                                              'Register',
                                              style: TextStyle(
                                                  fontSize: 25, color: defualtColor()),
                                            ))
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),

                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ));
        },
      ),
    );
  }
}
