import 'package:clothes_app/Layout/Clothes_Layout/Clothes_Layout.dart';
import 'package:clothes_app/Modules/Login_Screen/Login_Screen.dart';
import 'package:clothes_app/Modules/Register_Screen/Register_Cubit/cubit.dart';
import 'package:clothes_app/Modules/Register_Screen/Register_Cubit/state.dart';
import 'package:clothes_app/shared/components/components.dart';
import 'package:clothes_app/shared/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Register_Screen extends StatelessWidget {
  var EmailController = TextEditingController();
  var PasswordController = TextEditingController();
  var PhoneController = TextEditingController();
  var NameController = TextEditingController();
  var FormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => Register_Cubit(),
      child: BlocConsumer<Register_Cubit, Register_States>(
        listener: (context, state) {
          if(state is RegisterSuccessState){
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                    builder:
                        (context) =>
                        Clothes_Layout()));
          }
        },
        builder: (context, state) {
          var cubit = Register_Cubit.get(context);
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
                                  child: SingleChildScrollView(
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 15.0, right: 15, top: 15),
                                          child: defaultFormField(
                                              fontLabelColor:
                                                  Colors.white.withOpacity(0.6),
                                              fontInputColor:
                                                  Colors.white.withOpacity(0.6),
                                              type: TextInputType.text,
                                              label: 'Name',
                                              controller: NameController,
                                              prefix: Icons.person,
                                              Validatorfunction:
                                                  (String? value) {
                                                if (value!.isEmpty) {
                                                  return 'This Feild Must Not Be Embty';
                                                }
                                                return null;
                                              }),
                                        ),
                                        SizedBox(
                                          height: 13,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 15.0, right: 15, top: 15),
                                          child: defaultFormField(
                                              fontLabelColor:
                                                  Colors.white.withOpacity(0.6),
                                              fontInputColor:
                                                  Colors.white.withOpacity(0.6),
                                              type: TextInputType.phone,
                                              label: 'Phone',
                                              controller: PhoneController,
                                              prefix: Icons.phone,
                                              Validatorfunction:
                                                  (String? value) {
                                                if (value!.isEmpty) {
                                                  return 'This Feild Must Not Be Embty';
                                                }
                                                return null;
                                              }),
                                        ),
                                        SizedBox(
                                          height: 13,
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 15.0, right: 15, top: 15),
                                          child: defaultFormField(
                                              fontLabelColor:
                                                  Colors.white.withOpacity(0.6),
                                              fontInputColor:
                                                  Colors.white.withOpacity(0.6),
                                              type: TextInputType.emailAddress,
                                              label: 'Email Address',
                                              controller: EmailController,
                                              prefix: Icons.email,
                                              Validatorfunction:
                                                  (String? value) {
                                                if (value!.isEmpty) {
                                                  return 'This Feild Must Not Be Embty';
                                                }
                                                return null;
                                              }),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 15.0, right: 15, top: 15),
                                          child: defaultFormField(
                                            fontLabelColor:
                                                Colors.white.withOpacity(0.6),
                                            type: TextInputType.visiblePassword,
                                            fontInputColor:
                                                Colors.white.withOpacity(0.6),
                                            label: 'Password',
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
                                                onPressed: () {
                                                  Navigator.pushReplacement(
                                                      context,
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                              Login_Screen()));
                                                },
                                                child: Text(
                                                  'You Have An Account Already..?',
                                                  style: TextStyle(
                                                      fontSize: 20,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                )),
                                            // SizedBox(width: 1,),
                                            Expanded(
                                                child: state is! RegisterLoadinState
                                                    ? defaultButton(
                                                        topRightBorder: 0,
                                                        bottomLeftBorder: 0,
                                                        height: 50,
                                                        text: 'Register',
                                                        fontsize: 25,
                                                        OnPressedFunction: () {
                                                          if (FormKey.currentState!.validate()) {
                                                            cubit.userRegister(
                                                                name: NameController.text,
                                                                email: EmailController.text,
                                                                password: PasswordController.text,
                                                                phone: PhoneController.text);
                                                          }
                                                        })
                                                    : Center(
                                                        child:
                                                            CircularProgressIndicator())),
                                          ],
                                        ),
                                      ],
                                    ),
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
            ),
          );
        },
      ),
    );
  }
}
