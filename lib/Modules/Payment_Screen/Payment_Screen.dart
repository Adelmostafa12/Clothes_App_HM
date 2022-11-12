import 'package:clothes_app/Layout/Clothes_Layout/Clothes_Layout.dart';
import 'package:clothes_app/Modules/Login_Screen/Login_Cubit/cubit.dart';
import 'package:clothes_app/Modules/Login_Screen/Login_Cubit/state.dart';
import 'package:clothes_app/Modules/Register_Screen/Register_Screen.dart';
import 'package:clothes_app/shared/components/components.dart';
import 'package:clothes_app/shared/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Payment_Screen extends StatelessWidget {

  var PaymentController = TextEditingController();
  var FormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => Login_Cubit(),
      child: BlocConsumer<Login_Cubit, Login_States>(
        listener: (context, state) {},
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
                                    // SizedBox(height: 5,),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 15.0, right: 15),
                                      child: SizedBox(
                                        height: 150,
                                        child: defaultFormField(
                                          fontLabelColor: Colors.white.withOpacity(0.6),
                                          fontInputColor: Colors.white.withOpacity(0.6),
                                          type: TextInputType.number,
                                          maxLength: 11,
                                          label: 'Your Card Number',
                                          controller: PaymentController,
                                          prefix: Icons.add_card_outlined,
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
                                    ),
                                    defaultButton(
                                        topRightBorder: 0,
                                        bottomLeftBorder: 0,
                                        height: 50,
                                        width: 120,
                                        text: 'DONE',
                                        fontsize: 30,
                                        OnPressedFunction: () {
                                          if (FormKey.currentState!.validate()) {
                                            ShowToast(
                                                message: 'You Will Recieve Your Order In 48 Hours',
                                                state: ToastStates.SUCCESS
                                            );
                                          }
                                        }),
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
