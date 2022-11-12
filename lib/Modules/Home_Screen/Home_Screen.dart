import 'package:clothes_app/Layout/Clothes_Cubit/cubit.dart';
import 'package:clothes_app/Layout/Clothes_Cubit/states.dart';
import 'package:clothes_app/Layout/Product_Layout/Product_Layout.dart';
import 'package:clothes_app/Modules/Men_Screen/Men_Screen.dart';
import 'package:clothes_app/Modules/Divided_Screen/Divided_Screen.dart';
import 'package:clothes_app/Modules/Login_Screen/Login_Screen.dart';
import 'package:clothes_app/Modules/Register_Screen/Register_Screen.dart';
import 'package:clothes_app/Modules/Sport_Screen/Sport_Screen.dart';
import 'package:clothes_app/Modules/Women_Screen/Women_Screen.dart';
import 'package:clothes_app/shared/Componend_Classes/Componened_Class.dart';
import 'package:flutter/material.dart';
import 'package:clothes_app/shared/components/components.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Home_Screen extends StatelessWidget {
  var homeBordingController = PageController();
  var TrendingSmooth = PageController();
  var MagazinPageVeiwController = PageController();
  Home_Screen({super.key,});
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<Clothes_Cubit,Clothes_States>(
      listener: (context,state){},
      builder: (context,state){
        var cubit = Clothes_Cubit.get(context);
        List<onBordingHomeScreen> homeBord = [
          onBordingHomeScreen(
              image: 'https://i.pinimg.com/564x/8f/4c/c1/8f4cc19426eaf5b1cceab89fed07547e.jpg'
          ),
          onBordingHomeScreen(
              image: 'https://i.pinimg.com/564x/6e/b2/23/6eb2230c4f8be4888b299719d817d7e3.jpg'
          ),
          onBordingHomeScreen(
              image: 'https://i.pinimg.com/564x/03/30/18/03301827526e8bb8d05753bdc2b976e1.jpg'
          ),
          onBordingHomeScreen(
              image: 'https://i.pinimg.com/564x/4e/ce/98/4ece98190090a0573ea3a623e90aedcb.jpg'
          )
        ];
        List<buildTrendingListVieww> TrendingNowList = [
          buildTrendingListVieww(
              CirleAvatar: buildTrendingItem(
                color: cubit.isDark ? Colors.white : Colors.black,
                image: 'https://i.pinimg.com/564x/49/45/ec/4945ec27fed1cde4fbf3a2611faf2d98.jpg' ,
                gender: 'Kids',
                personAge: 'Girls 1:10 Years',
              )
          ),
          buildTrendingListVieww(
              CirleAvatar: buildTrendingItem(
                color: cubit.isDark ? Colors.white : Colors.black,
                image: 'https://i.pinimg.com/736x/a3/99/21/a39921501c4f23092df06d1a9162ac74.jpg' ,
                gender: 'Kids',
                personAge: 'Boys 1:10 Years',
              )
          ),
          buildTrendingListVieww(
              CirleAvatar: buildTrendingItem(
                color: cubit.isDark ? Colors.white : Colors.black,
                image: 'https://i.pinimg.com/736x/cd/2c/9f/cd2c9fa61b9396eb66f406f980339f77.jpg' ,
                gender: 'Women',
                personAge: 'Dresses',
              )
          ),
          buildTrendingListVieww(
              CirleAvatar: buildTrendingItem(
                color: cubit.isDark ? Colors.white : Colors.black,
                image: 'https://i.pinimg.com/564x/1e/98/64/1e986413c03c89391992ff4fc182a144.jpg' ,
                gender: 'Women',
                personAge: 'Hoodies',
              )
          ),
          buildTrendingListVieww(
              CirleAvatar: buildTrendingItem(
                color: cubit.isDark ? Colors.white : Colors.black,
                image: 'https://i.pinimg.com/564x/61/47/31/6147319507bc5afc2d55c76587a1b534.jpg' ,
                gender: 'Women',
                personAge: 'New In',
              )
          ),
          buildTrendingListVieww(
              CirleAvatar: buildTrendingItem(
                color: cubit.isDark ? Colors.white : Colors.black,
                image: 'https://i.pinimg.com/564x/81/ef/0c/81ef0c99cfd1a4d630419818ae4be87a.jpg' ,
                gender: 'Men',
                personAge: 'T-shirts',
              )
          ),
        ];
        List<NewFashionHighlight> NewFashionHighlightList = [
          NewFashionHighlight(
            Container: buildNewFashionItem(
              fontColor: cubit.isDark ?Colors.white : Colors.black,
              Inkweel:(){
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context)=> Product_Layout(
                      imageOfProduct: 'https://i.pinimg.com/736x/d7/f7/08/d7f7089f133089d65e424f28ba3789e1.jpg',
                      nameOfProduct: 'T-Shirt',
                      costOfProduct: 'EGP 149.00',

                    )
                    )
                );
              },
              icon: Clothes_Cubit.get(context).iconFav,
              image: 'https://i.pinimg.com/736x/d7/f7/08/d7f7089f133089d65e424f28ba3789e1.jpg' ,
              ProductCost: 'T-Shirt' ,
              ProductName: 'EGP 149.00',
            ),
          ),
          NewFashionHighlight(
              Container: buildNewFashionItem(
                fontColor: cubit.isDark ?Colors.white : Colors.black,
                Inkweel:(){
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context)=> Product_Layout(
                        imageOfProduct: 'https://i.pinimg.com/564x/ee/2e/be/ee2ebe8fa461496be850516191dcb08b.jpg',
                        nameOfProduct: 'Hoodies',
                        costOfProduct: 'EGP 250.00',
                      )
                      )
                  );
                },
                icon: Clothes_Cubit.get(context).iconFav,
                image: 'https://i.pinimg.com/564x/ee/2e/be/ee2ebe8fa461496be850516191dcb08b.jpg' ,
                ProductCost: 'Hoodies' ,
                ProductName: 'EGP 250.00',
              )
          ),
          NewFashionHighlight(
              Container: buildNewFashionItem(
                fontColor: cubit.isDark ?Colors.white : Colors.black,
                Inkweel: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context)=> Product_Layout(
                        imageOfProduct: 'https://i.pinimg.com/564x/ea/ef/69/eaef69bacafbe0b9b3f5e0a90ecdffba.jpg',
                        nameOfProduct: 'Jacket',
                        costOfProduct: 'EGP 400.00',
                      )
                      )
                  );
                },
                icon: Clothes_Cubit.get(context).iconFav,
                image: 'https://i.pinimg.com/564x/ea/ef/69/eaef69bacafbe0b9b3f5e0a90ecdffba.jpg' ,
                ProductCost: 'Jacket' ,
                ProductName: 'EGP 400.00',
              )
          ),
          NewFashionHighlight(
              Container: buildNewFashionItem(
                fontColor: cubit.isDark ?Colors.white : Colors.black,
                Inkweel: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context)=> Product_Layout(
                        imageOfProduct: 'https://i.pinimg.com/564x/32/42/0f/32420fc0ddfd840ec42101662d0f3095.jpg',
                        nameOfProduct: 'T-Shirt',
                        costOfProduct: 'EGP 180.00',
                      )
                      )
                  );
                },
                icon: Clothes_Cubit.get(context).iconFav,
                image: 'https://i.pinimg.com/564x/32/42/0f/32420fc0ddfd840ec42101662d0f3095.jpg' ,
                ProductCost: 'T-Shirt' ,
                ProductName: 'EGP 180.00',
              )
          ),
          NewFashionHighlight(
              Container: buildNewFashionItem(
                fontColor: cubit.isDark ?Colors.white : Colors.black,
                Inkweel: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context)=> Product_Layout(
                        imageOfProduct: 'https://i.pinimg.com/564x/6a/96/12/6a96128be087bade834ec7f4615e3736.jpg',
                        nameOfProduct: 'T-Shirt',
                        costOfProduct: 'EGP 180.00',
                      )
                      )
                  );
                },
                icon: Clothes_Cubit.get(context).iconFav,
                image: 'https://i.pinimg.com/564x/6a/96/12/6a96128be087bade834ec7f4615e3736.jpg' ,
                ProductCost: 'Long Shirt' ,
                ProductName: 'EGP 200.00',
              )
          ),
        ];
        List<MagazineContainer> MagazinList = [
          MagazineContainer(
              Container: buildMagazineItem(
                InkWellMagazineItem: (){},
                image: 'https://i.pinimg.com/564x/17/f3/a9/17f3a9bb5f78d48dec13b72dd9a0bdd5.jpg',
                text1: 'INSIDE H&M ',
                text2: 'Our guid to the best mens\' collections',
              )
          ),
          MagazineContainer(
              Container: buildMagazineItem(
                InkWellMagazineItem: (){},
                image: 'https://i.pinimg.com/564x/ff/4a/16/ff4a16375a81d0dc024e7aebe85ed6d3.jpg',
                text1: 'INSIDE H&M ',
                text2: 'Our guid to the best guy\' collections',
              )
          ),
          MagazineContainer(
              Container: buildMagazineItem(
                InkWellMagazineItem: (){},
                image: 'https://i.pinimg.com/564x/ef/7c/91/ef7c91e8ac4f4dd6b978869b6aa38915.jpg',
                text1: 'INSIDE H&M ',
                text2: 'Our guid to the best sportif\' collections',
              )
          ),
          MagazineContainer(
              Container: buildMagazineItem(
                InkWellMagazineItem: (){},
                image: 'https://i.pinimg.com/564x/b1/d3/2f/b1d32f4c6789da23ef4b59f14cdd862a.jpg',
                text1: 'INSIDE H&M ',
                text2: 'Our guid to the best womens\' collections',
              )
          ),
        ];
        return Scaffold(
          body: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    color: cubit.isDark ? Colors.yellow.withOpacity(0.7) :Colors.amber.withOpacity(0.17) ,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                         Padding(
                          padding: EdgeInsets.only(top: 18.0),
                          child: Text(
                            'Hi there,stranger!',
                            style: TextStyle(
                                fontFamily: 'Soka',
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              color: cubit.isDark ? Colors.white:Colors.black,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 15,left: 15),
                          child: Row(
                            children: [
                              TextButton(
                                  onPressed: (){
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context)=>Register_Screen())
                                    );
                                  },
                                  child:  Text(
                                      'Register',
                                      style:TextStyle(
                                        decoration: TextDecoration.underline,
                                        fontFamily: 'Soka',
                                        fontSize: 16,
                                        color: cubit.isDark ? Colors.white:Colors.black,
                                      )
                                  )
                              ),
                               Text(
                                  'or',
                                  style:TextStyle(
                                    fontFamily: 'Soka',
                                    fontSize: 16,
                                    color:cubit.isDark ? Colors.white:Colors.black,
                                  )
                              ),
                              TextButton(
                                  onPressed: (){
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context)=>Login_Screen())
                                    );
                                  },
                                  child:  Text(
                                      'Login in',
                                      style:TextStyle(
                                        decoration: TextDecoration.underline,
                                        fontFamily: 'Soka',
                                        fontSize: 16,
                                        color: cubit.isDark ? Colors.white:Colors.black,
                                      )
                                  )
                              ),
                               Text(
                                  'for free standard delivery',
                                  style:TextStyle(
                                    overflow: TextOverflow.ellipsis,
                                    fontFamily: 'Soka',
                                    fontSize: 16,
                                    color: cubit.isDark ? Colors.white:Colors.black,
                                  )
                              ),
                            ],
                          ),
                        ),
                         Text(
                            ' and click & collect.',
                            style:TextStyle(
                              overflow: TextOverflow.ellipsis,
                              fontFamily: 'Soka',
                              fontSize: 16,
                              color: cubit.isDark ? Colors.white:Colors.black,
                            )
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    color: Colors.deepOrange.withOpacity(0.9),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(top: 18.0),
                          child: Text(
                            'Find a fantastic deal on our app',
                            style: TextStyle(
                                fontFamily: 'Soka',
                                fontSize: 23,
                                color: Colors.white
                            ),
                          ),
                        ),
                        SizedBox(height: 5,),
                        Text(
                            '20% off',
                            style:TextStyle(
                                fontFamily: 'Soka',
                                fontSize: 25,
                                color: Colors.white,
                                fontWeight: FontWeight.bold
                            )
                        ),
                        SizedBox(height: 3,),
                        Text(
                            'everything',
                            style:TextStyle(
                                fontFamily: 'Soka',
                                fontSize: 24,
                                color: Colors.white,
                                fontWeight: FontWeight.bold
                            )
                        ),
                        SizedBox(height: 3,),
                        Text(
                            'Use code: 20App',
                            style:TextStyle(
                              overflow: TextOverflow.ellipsis,
                              fontFamily: 'Soka',
                              fontSize: 24,
                              color: Colors.white,
                            )
                        ),
                        SizedBox(height: 3,),
                        Text(
                            'offer valid exclusively via our app until 31.10.2022',
                            style:TextStyle(
                              overflow: TextOverflow.ellipsis,
                              fontFamily: 'Soka',
                              fontSize: 15,
                              color: Colors.white,
                            )
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 15,),
                  Container(
                    width: double.infinity,
                    color: Colors.redAccent.withGreen(60),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(top: 18.0),
                          child: Text(
                            'Fifa collection i store & online',
                            style: TextStyle(
                                fontFamily: 'Soka',
                                fontSize: 23,
                                color: Colors.white
                            ),
                          ),
                        ),
                        SizedBox(height: 10,),
                        Padding(
                          padding: EdgeInsets.only(left:15.0),
                          child: Text(
                              'Let\'s team up for Qatar World ',
                              style:TextStyle(
                                  fontFamily: 'Soka',
                                  fontSize: 25,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  overflow: TextOverflow.ellipsis
                              )
                          ),
                        ),
                        Text(
                            'Cup 2022!',
                            style:TextStyle(
                                fontFamily: 'Soka',
                                fontSize: 25,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                overflow: TextOverflow.ellipsis
                            )
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 15,),
                  Container(
                    width: double.infinity,
                    height: 600,
                    color: cubit.isDark ? Colors.black : Colors.grey[200],
                    // color: ,
                    child: Stack(
                      alignment: AlignmentDirectional.bottomCenter,
                      children: [
                        PageView.builder(
                          physics: const BouncingScrollPhysics(),
                          itemBuilder: (context,index)=>buildOnBordigngHomeScreen(homeBord[index]),
                          itemCount: homeBord.length,
                          controller: homeBordingController,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 35.0),
                          child: Container(
                            height: 80,
                            width: 300,
                            decoration: BoxDecoration(
                                color: cubit.isDark ? Colors.grey[900] : Colors.white,
                                // color: Colors.white,
                                borderRadius: BorderRadius.circular(25)
                            ),
                            child: Column(
                              children: [
                                 Text(
                                  'New Collection,New Era',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 35,
                                    color: cubit.isDark ? Colors.white.withOpacity(0.6) : Colors.black,
                                  ),
                                ),
                                const SizedBox(height: 10,),
                                defaultSmoothIndecator(
                                    PageController: homeBordingController,
                                    Count: homeBord.length
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 0,),
                   Text(
                    'Categories',
                    style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: cubit.isDark ? Colors.white.withOpacity(0.6) : Colors.black,
                    ),
                  ),
                  const SizedBox(height: 5,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Container(
                        width: double.infinity,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(

                            borderRadius: BorderRadius.circular(25)
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                buildCategoryItem(
                                  InkwellCategory: (){
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context)=>Women_Screen())
                                    );
                                  },
                                  heightOfContainer:200 ,
                                  nameOfCategory: 'Women',
                                  image: 'https://i.pinimg.com/564x/7c/d4/35/7cd43556928df873b82dfd09a2b1a49b.jpg',
                                ),
                                const Spacer(),
                                buildCategoryItem(
                                    InkwellCategory: (){
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(builder: (context)=>Divided_Screen())
                                      );
                                    },
                                    heightOfContainer: 200,
                                    // widthOfContainer:200 ,
                                    nameOfCategory: 'Divided',
                                    image:'https://i.pinimg.com/564x/6a/ca/ac/6acaac6c59da1207ad649b6f0a6d52b8.jpg'
                                )
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10.0),
                              child: Row(
                                children: [
                                  buildCategoryItem(
                                    InkwellCategory: (){
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(builder: (context)=>Men_Screen())
                                      );
                                    },
                                    heightOfContainer:200 ,
                                    nameOfCategory: 'Men',
                                    // widthOfContainer:200 ,
                                    image: 'https://i.pinimg.com/564x/ce/e1/b0/cee1b0961d6f6057d8b3caa33f8ffe53.jpg',
                                  ),
                                  const Spacer(),
                                  buildCategoryItem(
                                      InkwellCategory: (){
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(builder: (context)=> Sport_Screen())
                                        );
                                      },
                                      heightOfContainer: 200,
                                      // widthOfContainer:200 ,
                                      nameOfCategory: 'Sports',
                                      image:'https://i.pinimg.com/564x/ea/2f/fc/ea2ffc32e521d6ad9fdba21e319e97eb.jpg'
                                  )
                                ],
                              ),
                            ),
                          ],
                        )
                    ),
                  ),
                  const SizedBox(height: 10,),
                   Text(
                    'Trending Now',
                    style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: cubit.isDark ? Colors.white.withOpacity(0.6) : Colors.black,
                    ),
                  ),
                  const SizedBox(height: 10,),
                  Container(
                    height: 150,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListView.separated(
                          physics: const BouncingScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context,index) => buildTrendingListView(TrendingNowList[index]),
                          separatorBuilder:(context,index) => const SizedBox(width: 16,),
                          itemCount: TrendingNowList.length
                      ),
                    ),
                  ),
                  const SizedBox(height: 10,),
                   Text(
                    'New fashion highlight',
                    style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: cubit.isDark ? Colors.white.withOpacity(0.6) : Colors.black,
                    ),
                  ),
                  const SizedBox(height: 10,),
                  Container(
                    height: 455,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListView.separated(
                          physics: const BouncingScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context,index) => buildNewFashionHighlight(NewFashionHighlightList[index]),
                          separatorBuilder:(context,index) => const SizedBox(width: 16,) ,
                          itemCount: NewFashionHighlightList.length
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    color: Colors.amberAccent.withOpacity(0.6),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 18.0),
                          child: Text(
                            'MAGAZINE',
                            style: TextStyle(
                                fontFamily: 'Soka',
                                fontSize: 30,
                                color: Colors.black.withOpacity(0.7),
                                fontWeight: FontWeight.bold
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 15,left: 15),
                          child: TextButton(
                              onPressed: (){},
                              child: const Text(
                                  'READ H&M MAGAZINE',
                                  style:TextStyle(
                                    decoration: TextDecoration.underline,
                                    fontFamily: 'Soka',
                                    fontSize: 18,
                                    color: Colors.black,
                                  )
                              )
                          ),
                        ),
                        const SizedBox(height: 20,),
                        Container(
                          height: 380,
                          width: double.infinity,
                          child: PageView.builder(
                            physics: const BouncingScrollPhysics(),
                            itemBuilder: (context,index)=>buildMagazineContainer(MagazinList[index]),
                            itemCount: MagazinList.length,
                            controller: MagazinPageVeiwController,
                          ),
                        ),
                        const SizedBox(height: 10,),
                        defaultSmoothIndecator(
                            PageController: MagazinPageVeiwController,
                            Count: MagazinList.length
                        ),
                        const SizedBox(height: 20,),
                      ],
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