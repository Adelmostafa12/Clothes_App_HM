import 'package:clothes_app/Layout/Clothes_Cubit/cubit.dart';
import 'package:clothes_app/Layout/Clothes_Cubit/states.dart';
import 'package:clothes_app/Layout/Product_Layout/Product_Layout.dart';
import 'package:clothes_app/shared/Componend_Classes/Componened_Class.dart';
import 'package:clothes_app/shared/components/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Divided_Screen extends StatelessWidget {
  var homeBordingController = PageController();
  var MagazinPageVeiwController = PageController();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<Clothes_Cubit,Clothes_States>(
      listener: (context,state){},
      builder: (context,state){
        var cubit = Clothes_Cubit.get(context);
        List<NewFashionHighlight> NewFashionHighlightList = [
          NewFashionHighlight(
              Container: buildNewFashionItem(
                color: cubit.isDark ? Colors.black : Colors.white,
                fontColor: cubit.isDark ? Colors.white : Colors.black,
                Inkweel:(){
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context)=> Product_Layout(
                        imageOfProduct: 'https://i.pinimg.com/564x/ea/75/2c/ea752cd91c3c87fd227686954ea98673.jpg',
                        nameOfProduct: 'Jacket',
                        costOfProduct: 'EGP 250.00',
                      )
                      )
                  );
                },
                icon: Clothes_Cubit.get(context).iconFav,
                favPress: (){
                  Clothes_Cubit.get(context).ChangFav();
                },
                image: 'https://i.pinimg.com/564x/ea/75/2c/ea752cd91c3c87fd227686954ea98673.jpg' ,
                ProductCost: 'Jacket' ,
                ProductName: 'EGP 250.00',
              )
          ),
          NewFashionHighlight(
              Container: buildNewFashionItem(
                color: cubit.isDark ? Colors.black : Colors.white,
                fontColor: cubit.isDark ? Colors.white : Colors.black,
                Inkweel:(){
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context)=> Product_Layout(
                        imageOfProduct: 'https://i.pinimg.com/564x/5f/4a/71/5f4a71b8b9c35540adc745b76b50a018.jpg',
                        nameOfProduct: 'T-Shirt',
                        costOfProduct: 'EGP 200.00',

                      )
                      )
                  );
                },
                icon: Clothes_Cubit.get(context).iconFav,
                favPress: (){
                  Clothes_Cubit.get(context).ChangFav();
                },
                image: 'https://i.pinimg.com/564x/5f/4a/71/5f4a71b8b9c35540adc745b76b50a018.jpg' ,
                ProductCost: 'T-Shirt' ,
                ProductName: 'EGP 200.00',
              )
          ),
          NewFashionHighlight(
              Container: buildNewFashionItem(
                color: cubit.isDark ? Colors.black : Colors.white,
                fontColor: cubit.isDark ? Colors.white : Colors.black,
                Inkweel:(){
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context)=> Product_Layout(
                        imageOfProduct: 'https://i.pinimg.com/736x/b5/2f/fb/b52ffbaa138eac66b3e60beb9a8ad495.jpg',
                        nameOfProduct: 'Jacket',
                        costOfProduct: 'EGP 350.00',
                      )
                      )
                  );
                },
                icon: Clothes_Cubit.get(context).iconFav,
                favPress: (){
                  Clothes_Cubit.get(context).ChangFav();
                },
                image: 'https://i.pinimg.com/736x/b5/2f/fb/b52ffbaa138eac66b3e60beb9a8ad495.jpg' ,
                ProductCost: 'Jacket' ,
                ProductName: 'EGP 350.00',
              )
          ),
          NewFashionHighlight(
              Container: buildNewFashionItem(
                color: cubit.isDark ? Colors.black : Colors.white,
                fontColor: cubit.isDark ? Colors.white : Colors.black,
                Inkweel:(){
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context)=> Product_Layout(
                        imageOfProduct: 'https://i.pinimg.com/564x/38/9e/08/389e0873ffa0e30a554483448dfe6098.jpg' ,
                        nameOfProduct: 'Shirt',
                        costOfProduct: 'EGP 400.00',
                      )
                      )
                  );
                },
                icon: Clothes_Cubit.get(context).iconFav,
                favPress: (){
                  Clothes_Cubit.get(context).ChangFav();
                },
                image: 'https://i.pinimg.com/564x/38/9e/08/389e0873ffa0e30a554483448dfe6098.jpg' ,
                ProductCost: 'Shirt' ,
                ProductName: 'EGP 400.00',
              )
          ),
        ];
        List<MagazineContainer> MagazinList = [
          MagazineContainer(
              Container: buildMagazineItem(
                InkWellMagazineItem: (){},
                image: 'https://i.pinimg.com/564x/36/62/ca/3662cac7c54c15f8070bd56c63ca0248.jpg',
                text1: 'INSIDE H&M ',
                text2: 'Our guid to the best mens\' collections',
              )
          ),
          MagazineContainer(
              Container: buildMagazineItem(
                InkWellMagazineItem: (){},
                image: 'https://i.pinimg.com/564x/f6/d0/ed/f6d0ed1bf3842fe1597d5566ac8c5eab.jpg',
                text1: 'INSIDE H&M ',
                text2: 'Our guid to the best guy\' collections',
              )
          ),
          MagazineContainer(
              Container: buildMagazineItem(
                InkWellMagazineItem: (){},
                image: 'https://i.pinimg.com/564x/2a/d7/25/2ad7257b3842f1e73eb6cfb965fb9af1.jpg',
                text1: 'INSIDE H&M ',
                text2: 'Our guid to the best sportif\' collections',
              )
          ),
          MagazineContainer(
              Container: buildMagazineItem(
                InkWellMagazineItem: (){},
                image: 'https://i.pinimg.com/736x/fa/24/1d/fa241dac148514008f83738716abf748.jpg',
                text1: 'INSIDE H&M ',
                text2: 'Our guid to the best womens\' collections',
              )
          ),
        ];
        List<onBordingHomeScreen> homeBord = [
          onBordingHomeScreen(
              image: 'https://i.pinimg.com/564x/e1/0b/50/e10b500930cfb1ca23ebeb7f1e22cf01.jpg'
          ),
          onBordingHomeScreen(
              image: 'https://i.pinimg.com/564x/2d/94/4a/2d944a5ebcd985e735a7b1a2ed0d5eaa.jpg'
          ),
          onBordingHomeScreen(
              image: 'https://i.pinimg.com/564x/27/14/a1/2714a138e84cf10f2ca6cf1474c3cef4.jpg'
          ),
          onBordingHomeScreen(
              image: 'https://i.pinimg.com/564x/6f/1a/2e/6f1a2e60ac5b5f9205135d5e4ab4dc28.jpg'
          )
        ];
        List<NewFashionHighlight> MostPopularList = [
          NewFashionHighlight(
              Container: buildNewFashionItem(
                color: cubit.isDark ? Colors.black : Colors.white,
                fontColor: cubit.isDark ? Colors.white : Colors.black,
                Inkweel:(){
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context)=> Product_Layout(
                        imageOfProduct: 'https://i.pinimg.com/564x/ae/95/48/ae9548135e35353ff90aa219a55c1abc.jpg' ,
                        nameOfProduct: 'T-Shirt',
                        costOfProduct: 'EGP 300.00',
                      )
                      )
                  );
                },
                icon: Clothes_Cubit.get(context).iconFav,
                favPress: (){
                  Clothes_Cubit.get(context).ChangFav();
                },
                image: 'https://i.pinimg.com/564x/ae/95/48/ae9548135e35353ff90aa219a55c1abc.jpg' ,
                ProductCost: 'T-Shirt' ,
                ProductName: 'EGP 300.00',
              )
          ),
          NewFashionHighlight(
            Container: buildNewFashionItem(
              color: cubit.isDark ? Colors.black : Colors.white,
              fontColor: cubit.isDark ? Colors.white : Colors.black,
              Inkweel:(){
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context)=> Product_Layout(
                      imageOfProduct: 'https://i.pinimg.com/564x/19/d5/b0/19d5b0a61bfcabf34fa463384f5dd728.jpg',
                      nameOfProduct: 'High Cool',
                      costOfProduct: 'EGP 250.00',

                    )
                    )
                );
              },
              icon: Clothes_Cubit.get(context).iconFav,
              favPress: (){
                Clothes_Cubit.get(context).ChangFav();
              },
              image: 'https://i.pinimg.com/564x/19/d5/b0/19d5b0a61bfcabf34fa463384f5dd728.jpg' ,
              ProductCost: 'High Cool' ,
              ProductName: 'EGP 250.00',
            ),
          ),
          NewFashionHighlight(
              Container: buildNewFashionItem(
                color: cubit.isDark ? Colors.black : Colors.white,
                fontColor: cubit.isDark ? Colors.white : Colors.black,
                Inkweel:(){
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context)=> Product_Layout(
                        imageOfProduct: 'https://i.pinimg.com/564x/80/6d/ae/806dae842f9b869fbcfb933c2f263e21.jpg',
                        nameOfProduct: 'Shirt',
                        costOfProduct: 'EGP 250.00',
                      )
                      )
                  );
                },
                icon: Clothes_Cubit.get(context).iconFav,
                favPress: (){
                  Clothes_Cubit.get(context).ChangFav();
                },
                image: 'https://i.pinimg.com/564x/80/6d/ae/806dae842f9b869fbcfb933c2f263e21.jpg' ,
                ProductCost: 'Shirt' ,
                ProductName: 'EGP 250.00',
              )
          ),
        ];
        return Scaffold(
          body: Padding(
            padding: const EdgeInsets.only(top: 13),
            child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(
                  children: [
                    const SizedBox(height: 10,),
                    Container(
                      height: 435,

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
                      color: Colors.green.withOpacity(0.9),
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
                    SizedBox(height: 10,),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Row(
                            children: [
                              CircleAvatar(
                                radius: 35,
                                backgroundImage: NetworkImage(
                                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ6n3nBPnbXGeUemJ7pB6ae_xDuvqQj2KIeCw&usqp=CAU'
                                ),
                              ),
                              SizedBox(width: 7,),
                              Text(
                                'New Arrivals',
                                style: TextStyle(
                                  fontSize: 30,
                                  color: cubit.isDark ? Colors.white.withOpacity(0.6) : Colors.black,
                                ),
                              ),
                              Spacer(),
                              IconButton(
                                  onPressed: (){},
                                  icon: Icon(
                                    Icons.arrow_forward_ios_rounded,
                                    color: cubit.isDark ? Colors.white.withOpacity(0.6) : Colors.black,
                                  )
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 10,),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Row(
                            children: [
                              CircleAvatar(
                                radius: 35,
                                backgroundImage: NetworkImage(
                                    'https://i.pinimg.com/564x/69/c7/bd/69c7bd1fa366f3e6d09596b020b46188.jpg'
                                ),
                              ),
                              SizedBox(width: 7,),
                              Text(
                                'Trending Now',
                                style: TextStyle(
                                  fontSize: 30,
                                  color: cubit.isDark ? Colors.white.withOpacity(0.6) : Colors.black,
                                ),
                              ),
                              Spacer(),
                              IconButton(
                                  onPressed: (){},
                                  icon: Icon(
                                    Icons.arrow_forward_ios_rounded,
                                    color: cubit.isDark ? Colors.white.withOpacity(0.6) : Colors.black,
                                  )
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 10,),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Row(
                            children: [
                              CircleAvatar(
                                radius: 35,
                                backgroundImage: NetworkImage(
                                    'https://i.pinimg.com/564x/12/31/4c/12314c28e35cb203fecbd3119e9134bc.jpg'
                                ),
                              ),
                              SizedBox(width: 7,),
                              Text(
                                'Shop By Product',
                                style: TextStyle(
                                  fontSize: 30,
                                  color: cubit.isDark ? Colors.white.withOpacity(0.6) : Colors.black,
                                ),
                              ),
                              Spacer(),
                              IconButton(
                                  onPressed: (){},
                                  icon: Icon(
                                    Icons.arrow_forward_ios_rounded,
                                    color: cubit.isDark ? Colors.white.withOpacity(0.6) : Colors.black,
                                  )
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 10,),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Row(
                            children: [
                              CircleAvatar(
                                radius: 35,
                                backgroundImage: NetworkImage(
                                    'https://i.pinimg.com/564x/ae/95/48/ae9548135e35353ff90aa219a55c1abc.jpg'
                                ),
                              ),
                              SizedBox(width: 7,),
                              Text(
                                'Shop By Occasion',
                                style: TextStyle(
                                  fontSize: 30,
                                  color: cubit.isDark ? Colors.white.withOpacity(0.6) : Colors.black,
                                ),
                              ),
                              Spacer(),
                              IconButton(
                                  onPressed: (){},
                                  icon: Icon(
                                    Icons.arrow_forward_ios_rounded,
                                    color: cubit.isDark ? Colors.white.withOpacity(0.6) : Colors.black,
                                  )
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 10,),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Row(
                            children: [
                              CircleAvatar(
                                radius: 35,
                                backgroundImage: NetworkImage(
                                    'https://i.pinimg.com/564x/88/09/f5/8809f59dbe38bce45eb2bb8522a02a90.jpg'
                                ),
                              ),
                              SizedBox(width: 7,),
                              Text(
                                'Magazine',
                                style: TextStyle(
                                  fontSize: 30,
                                  color: cubit.isDark ? Colors.white.withOpacity(0.6) : Colors.black,
                                ),
                              ),
                              Spacer(),
                              IconButton(
                                  onPressed: (){},
                                  icon: Icon(
                                    Icons.arrow_forward_ios_rounded,
                                    color: cubit.isDark ? Colors.white.withOpacity(0.6) : Colors.black,
                                  )
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 10,),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Row(
                            children: [
                              CircleAvatar(
                                radius: 35,
                                backgroundImage: NetworkImage(
                                    'https://i.pinimg.com/564x/db/5c/3c/db5c3ca71ea5eed679570654548b37b4.jpg'
                                ),
                              ),
                              SizedBox(width: 7,),
                              Text(
                                'Sustainabilty',
                                style: TextStyle(
                                  fontSize: 30,
                                  color: cubit.isDark ? Colors.white.withOpacity(0.6) : Colors.black,
                                ),
                              ),
                              Spacer(),
                              IconButton(
                                  onPressed: (){},
                                  icon: Icon(
                                    Icons.arrow_forward_ios_rounded,
                                    color: cubit.isDark ? Colors.white.withOpacity(0.6) : Colors.black,
                                  )
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 10,),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Container(
                      width: double.infinity,
                      height: 600,
                      color:cubit.isDark ? Colors.black : Colors.grey[300] ,
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
                                borderRadius: BorderRadius.circular(25),
                                color: cubit.isDark ? Colors.grey[900] : Colors.grey[300] ,
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
                    Container(
                      height: 430,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ListView.separated(
                            physics: const BouncingScrollPhysics(),
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context,index) => buildNewFashionHighlight(MostPopularList[index]),
                            separatorBuilder:(context,index) => const SizedBox(width: 16,) ,
                            itemCount: MostPopularList.length
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
                )
            ),
          ),
        );
      },
    );
  }
}
