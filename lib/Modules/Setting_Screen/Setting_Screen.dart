import 'package:clothes_app/Layout/Clothes_Cubit/cubit.dart';
import 'package:clothes_app/Layout/Clothes_Cubit/states.dart';
import 'package:clothes_app/shared/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Setting_Screen extends StatelessWidget {
  const Setting_Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<Clothes_Cubit, Clothes_States>(
        listener: (context, state) {},
        builder: (context, state) {
          var cubit = Clothes_Cubit.get(context);
          return Scaffold(
            body: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                  alignment: AlignmentDirectional.bottomCenter,
                  children: [
                    const SizedBox(
                      width: double.infinity,
                      height: 200,
                    ),
                    Column(
                      children: [
                        Container(
                          width: 180,
                          height: 180,
                          clipBehavior: Clip.antiAlias,
                          decoration: const BoxDecoration(
                              color: Colors.blue, shape: BoxShape.circle),
                          child: const Image(
                            image: AssetImage('assets/Images/1663884874336.jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Adel Mostafa',
                          style: TextStyle(
                              fontSize: 27,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Soka',
                              color: cubit.isDark
                                  ? Colors.white.withOpacity(0.6)
                                  : Colors.black),
                        ),
                        Text(
                          'Flutter Developer',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Soka',
                              color: cubit.isDark
                                  ? Colors.grey.withOpacity(0.6)
                                  : Colors.black54),
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(height: 10,),
                Container(
                  height: 1,
                  color: cubit.isDark ? Colors.grey[600] : Colors.grey[500],
                ),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Row(
                    children: [
                      Container(
                        height: 50,
                        width: 100,
                        decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(10)),
                        child: const Center(
                          child: Text(
                            'Gender',
                            style: TextStyle(
                                fontFamily: 'Soka',
                                fontSize: 25,
                                color: Colors.white),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Container(
                          height: 50,
                          decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(10)),
                          child: Center(
                            child: DropdownButton(
                              items: ['Male', 'Female']
                                  .map((e) => DropdownMenuItem(
                                value: e,
                                child: Text(e),
                              ))
                                  .toList(),
                              onChanged: (value) {
                                cubit.valueGender = value!;
                                cubit.DropDownOnChangeGender(value);
                              },
                              value: cubit.valueGender,
                              style: const TextStyle(
                                fontSize: 20,
                              ),
                              dropdownColor: Colors.black.withOpacity(0.8),
                              icon: const Icon(Icons.person,size: 20,),
                              iconEnabledColor: Colors.white,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Row(
                    children: [
                      Container(
                        height: 50,
                        width: 130,
                        decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(10)),
                        child: const Center(
                          child: Text(
                            'Language',
                            style: TextStyle(
                                fontFamily: 'Soka',
                                fontSize: 25,
                                color: Colors.white),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Container(
                          height: 50,
                          decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(10)),
                          child: Center(
                            child: DropdownButton(
                              items: ['English', 'Arabic']
                                  .map((e) => DropdownMenuItem(
                                value: e,
                                child: Text(e),
                              ))
                                  .toList(),
                              onChanged: (value) {
                                cubit.valueLang = value!;
                                cubit.DropDownOnChangeLanguage(value);
                              },
                              value: cubit.valueLang,
                              style: const TextStyle(
                                fontSize: 20,
                              ),
                              dropdownColor: Colors.black.withOpacity(0.8),
                              icon: const Icon(Icons.language,size: 20,),
                              iconEnabledColor: Colors.white,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          );
        });
  }
}
