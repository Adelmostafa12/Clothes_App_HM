import 'package:clothes_app/Layout/Clothes_Cubit/cubit.dart';
import 'package:clothes_app/Layout/Clothes_Cubit/states.dart';
import 'package:clothes_app/Layout/Product_Layout/Product_Layout.dart';
import 'package:clothes_app/shared/Componend_Classes/Componened_Class.dart';
import 'package:clothes_app/shared/components/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Sport_Screen extends StatelessWidget {

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
                      imageOfProduct: 'https://i.pinimg.com/736x/50/a1/3b/50a13b37859a5da63531b9bcb88ecea5.jpg',
                      nameOfProduct: 'Basketball Clothes',
                      costOfProduct: 'EGP 500.00',

                    )
                    )
                );
              },
              icon: Clothes_Cubit.get(context).iconFav,
              favPress: (){
                Clothes_Cubit.get(context).ChangFav();
              },
              image: 'https://i.pinimg.com/736x/50/a1/3b/50a13b37859a5da63531b9bcb88ecea5.jpg' ,
              ProductCost: 'Basketball Clothes' ,
              ProductName: 'EGP 500.00',
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
                        imageOfProduct: 'https://i.pinimg.com/564x/dc/4f/4f/dc4f4f512c1495b7482df66dc9cc8d4c.jpg',
                        nameOfProduct: 'Sport Clothes',
                        costOfProduct: 'EGP 950.00',
                      )
                      )
                  );
                },
                icon: Clothes_Cubit.get(context).iconFav,
                favPress: (){
                  Clothes_Cubit.get(context).ChangFav();
                },
                image: 'https://i.pinimg.com/564x/dc/4f/4f/dc4f4f512c1495b7482df66dc9cc8d4c.jpg' ,
                ProductCost: 'Sport Clothes' ,
                ProductName: 'EGP 950.00',
              )
          ),
          NewFashionHighlight(
              Container: buildNewFashionItem(
                color: cubit.isDark ? Colors.black : Colors.white,
                fontColor: cubit.isDark ? Colors.white : Colors.black,
                Inkweel: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context)=> Product_Layout(
                        imageOfProduct: 'https://i.pinimg.com/736x/ae/b6/d3/aeb6d3d2d3d24487a9fb55102a040b62.jpg',
                        nameOfProduct: 'Tennis Clothes',
                        costOfProduct: 'EGP 600.00',
                      )
                      )
                  );
                },
                icon: Clothes_Cubit.get(context).iconFav,
                favPress: (){
                  Clothes_Cubit.get(context).ChangFav();
                },
                image: 'https://i.pinimg.com/736x/ae/b6/d3/aeb6d3d2d3d24487a9fb55102a040b62.jpg' ,
                ProductCost: 'Tennis Clothes' ,
                ProductName: 'EGP 600.00',
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
                      imageOfProduct: 'https://i.pinimg.com/564x/1d/b1/36/1db136cf537ee8cede2a98828092d19c.jpg',
                      nameOfProduct: 'Basketball Clothes',
                      costOfProduct: 'EGP 500.00',

                    )
                    )
                );
              },
              icon: Clothes_Cubit.get(context).iconFav,
              favPress: (){
                Clothes_Cubit.get(context).ChangFav();
              },
              image: 'https://i.pinimg.com/564x/1d/b1/36/1db136cf537ee8cede2a98828092d19c.jpg' ,
              ProductCost: 'Basketball Clothes' ,
              ProductName: 'EGP 500.00',
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
                        imageOfProduct: 'https://i.pinimg.com/564x/bd/21/70/bd2170c7aa768362d1d261af89e0f90a.jpg',
                        nameOfProduct: 'Sport Clothes',
                        costOfProduct: 'EGP 700.00',
                      )
                      )
                  );
                },
                icon: Clothes_Cubit.get(context).iconFav,
                favPress: (){
                  Clothes_Cubit.get(context).ChangFav();
                },
                image: 'https://i.pinimg.com/564x/bd/21/70/bd2170c7aa768362d1d261af89e0f90a.jpg' ,
                ProductCost: 'Sport Clothes' ,
                ProductName: 'EGP 700.00',
              )
          ),
        ];
        List<MagazineContainer> MagazinList = [
          MagazineContainer(
              Container: buildMagazineItem(
                InkWellMagazineItem: (){},
                image: 'https://i.pinimg.com/564x/8b/06/da/8b06da3be70b30a98eb690d1ae75ad53.jpg',
                text1: 'INSIDE H&M ',
                text2: 'Our guid to the best mens\' collections',
              )
          ),
          MagazineContainer(
              Container: buildMagazineItem(
                InkWellMagazineItem: (){},
                image: 'https://i.pinimg.com/564x/9d/86/7f/9d867ffb3125f6fa980c714b31a6210a.jpg',
                text1: 'INSIDE H&M ',
                text2: 'Our guid to the best guy\' collections',
              )
          ),
          MagazineContainer(
              Container: buildMagazineItem(
                InkWellMagazineItem: (){},
                image: 'https://i.pinimg.com/564x/ec/ef/5b/ecef5b5846094e69b5034aa6cda162a9.jpg',
                text1: 'INSIDE H&M ',
                text2: 'Our guid to the best sportif\' collections',
              )
          ),
          MagazineContainer(
              Container: buildMagazineItem(
                InkWellMagazineItem: (){},
                image: 'https://i.pinimg.com/564x/97/66/45/9766458bd4272d12bb9d34d3bea925b8.jpg',
                text1: 'INSIDE H&M ',
                text2: 'Our guid to the best womens\' collections',
              )
          ),
        ];
        List<onBordingHomeScreen> homeBord = [
          onBordingHomeScreen(
              image: 'https://i.pinimg.com/564x/23/4e/17/234e17fe283bb384c8bfab5da8b52b65.jpg'
          ),
          onBordingHomeScreen(
              image: 'https://i.pinimg.com/564x/9a/c7/9f/9ac79fb122096b5cbf8191ebaf76a205.jpg'
          ),
          onBordingHomeScreen(
              image: 'https://i.pinimg.com/736x/ad/61/28/ad61282e7a14711b8a50ad2f91e3c38c.jpg'
          ),
          onBordingHomeScreen(
              image: 'https://i.pinimg.com/564x/4f/4d/5c/4f4d5c99ed374190c678ee82ac4b9a53.jpg'
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
                      imageOfProduct: 'https://i.pinimg.com/736x/c2/cf/cf/c2cfcfdb3174e9cbbd3505dec4800a61.jpg',
                      nameOfProduct: 'T-Shirt',
                      costOfProduct: 'EGP 650.00',

                    )
                    )
                );
              },
              icon: Clothes_Cubit.get(context).iconFav,
              favPress: (){
                Clothes_Cubit.get(context).ChangFav();
              },
              image: 'https://i.pinimg.com/736x/c2/cf/cf/c2cfcfdb3174e9cbbd3505dec4800a61.jpg' ,
              ProductCost: 'T-Shirt' ,
              ProductName: 'EGP 650.00',
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
                        imageOfProduct: 'https://i.pinimg.com/736x/3e/4b/42/3e4b42e8270ad5142383732839eb9b3c.jpg',
                        nameOfProduct: 'Sport Clothes',
                        costOfProduct: 'EGP 650.00',
                      )
                      )
                  );
                },
                icon: Clothes_Cubit.get(context).iconFav,
                favPress: (){
                  Clothes_Cubit.get(context).ChangFav();
                },
                image: 'https://i.pinimg.com/736x/3e/4b/42/3e4b42e8270ad5142383732839eb9b3c.jpg' ,
                ProductCost: 'Sport Clothes' ,
                ProductName: 'EGP 650.00',
              )
          ),
          NewFashionHighlight(
              Container: buildNewFashionItem(
                color: cubit.isDark ? Colors.black : Colors.white,
                fontColor: cubit.isDark ? Colors.white : Colors.black,
                Inkweel: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context)=> Product_Layout(
                        imageOfProduct: 'https://i.pinimg.com/736x/83/3c/3c/833c3c44449acea6edb311c15781732f.jpg',
                        nameOfProduct: 'Sport Clothes',
                        costOfProduct: 'EGP 400.00',
                      )
                      )
                  );
                },
                icon: Clothes_Cubit.get(context).iconFav,
                favPress: (){
                  Clothes_Cubit.get(context).ChangFav();
                },
                image: 'https://i.pinimg.com/736x/83/3c/3c/833c3c44449acea6edb311c15781732f.jpg' ,
                ProductCost: 'Sport Clothes' ,
                ProductName: 'EGP 400.00',
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
                        imageOfProduct: 'https://i.pinimg.com/564x/66/05/bc/6605bc7cf01900ddd0bd4dd547cc591c.jpg',
                        nameOfProduct: 'Sport Jacket',
                        costOfProduct: 'EGP 700.00',
                      )
                      )
                  );
                },
                icon: Clothes_Cubit.get(context).iconFav,
                favPress: (){
                  Clothes_Cubit.get(context).ChangFav();
                },
                image: 'https://i.pinimg.com/564x/66/05/bc/6605bc7cf01900ddd0bd4dd547cc591c.jpg' ,
                ProductCost: 'Sport Jacket' ,
                ProductName: 'EGP 700.00',
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
                      color: cubit.isDark ? Colors.black : Colors.white,
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
                      color: Colors.blue.withOpacity(0.9),
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
