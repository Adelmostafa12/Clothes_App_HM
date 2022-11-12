import 'package:clothes_app/Layout/Clothes_Cubit/cubit.dart';
import 'package:clothes_app/Layout/Clothes_Cubit/states.dart';
import 'package:clothes_app/Layout/Product_Layout/Product_Layout.dart';
import 'package:clothes_app/shared/Componend_Classes/Componened_Class.dart';
import 'package:clothes_app/shared/components/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hexcolor/hexcolor.dart';


class Men_Screen extends StatelessWidget {
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
               Inkweel: (){
                 Navigator.push(
                     context,
                     MaterialPageRoute(builder: (context)=> Product_Layout(
                       imageOfProduct: 'https://i.pinimg.com/736x/17/ec/2e/17ec2ee819468c89012995880d7e095f.jpg',
                       nameOfProduct: 'Hoodei',
                       costOfProduct: 'EGP 400.00',
                     )
                     )
                 );
               },
               icon: Clothes_Cubit.get(context).iconFav,
               favPress: (){
                 Clothes_Cubit.get(context).ChangFav();
               },
               image: 'https://i.pinimg.com/736x/17/ec/2e/17ec2ee819468c89012995880d7e095f.jpg' ,
               ProductCost: 'Hoodei' ,
               ProductName: 'EGP 400.00',
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
                       imageOfProduct: 'https://i.pinimg.com/564x/5d/2f/07/5d2f07a955aa806cdc548028338964a8.jpg',
                       nameOfProduct: 'Shirt',
                       costOfProduct: 'EGP 200.00',
                     )
                     )
                 );
               },
               icon: Clothes_Cubit.get(context).iconFav,
               favPress: (){
                 Clothes_Cubit.get(context).ChangFav();
               },
               image: 'https://i.pinimg.com/564x/5d/2f/07/5d2f07a955aa806cdc548028338964a8.jpg' ,
               ProductCost: 'Shirt' ,
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
                     imageOfProduct: 'https://i.pinimg.com/736x/d7/f7/08/d7f7089f133089d65e424f28ba3789e1.jpg',
                     nameOfProduct: 'T-Shirt',
                     costOfProduct: 'EGP 149.00',

                   )
                   )
               );
             },
             icon: Clothes_Cubit.get(context).iconFav,
             favPress: (){
               Clothes_Cubit.get(context).ChangFav();
             },
             image: 'https://i.pinimg.com/736x/d7/f7/08/d7f7089f133089d65e424f28ba3789e1.jpg' ,
             ProductCost: 'T-Shirt' ,
             ProductName: 'EGP 149.00',
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
                       imageOfProduct: 'https://i.pinimg.com/564x/ee/2e/be/ee2ebe8fa461496be850516191dcb08b.jpg',
                       nameOfProduct: 'Hoodies',
                       costOfProduct: 'EGP 250.00',
                     )
                     )
                 );
               },
               icon: Clothes_Cubit.get(context).iconFav,
               favPress: (){
                 Clothes_Cubit.get(context).ChangFav();
               },
               image: 'https://i.pinimg.com/564x/ee/2e/be/ee2ebe8fa461496be850516191dcb08b.jpg' ,
               ProductCost: 'Hoodies' ,
               ProductName: 'EGP 250.00',
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
                       imageOfProduct: 'https://i.pinimg.com/564x/ea/ef/69/eaef69bacafbe0b9b3f5e0a90ecdffba.jpg',
                       nameOfProduct: 'Jacket',
                       costOfProduct: 'EGP 400.00',
                     )
                     )
                 );
               },
               icon: Clothes_Cubit.get(context).iconFav,
               favPress: (){
                 Clothes_Cubit.get(context).ChangFav();
               },
               image: 'https://i.pinimg.com/564x/ea/ef/69/eaef69bacafbe0b9b3f5e0a90ecdffba.jpg' ,
               ProductCost: 'Jacket' ,
               ProductName: 'EGP 400.00',
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
                       imageOfProduct: 'https://i.pinimg.com/564x/32/42/0f/32420fc0ddfd840ec42101662d0f3095.jpg',
                       nameOfProduct: 'T-Shirt',
                       costOfProduct: 'EGP 180.00',
                     )
                     )
                 );
               },
               icon: Clothes_Cubit.get(context).iconFav,
               favPress: (){
                 Clothes_Cubit.get(context).ChangFav();
               },
               image: 'https://i.pinimg.com/564x/32/42/0f/32420fc0ddfd840ec42101662d0f3095.jpg' ,
               ProductCost: 'T-Shirt' ,
               ProductName: 'EGP 180.00',
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
                       imageOfProduct: 'https://i.pinimg.com/564x/6a/96/12/6a96128be087bade834ec7f4615e3736.jpg',
                       nameOfProduct: 'T-Shirt',
                       costOfProduct: 'EGP 180.00',
                     )
                     )
                 );
               },
               icon: Clothes_Cubit.get(context).iconFav,
               favPress: (){
                 Clothes_Cubit.get(context).ChangFav();
               },
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
               image: 'https://i.pinimg.com/564x/6c/cf/9f/6ccf9f18a0535b2da74d711164334163.jpg',
               text1: 'INSIDE H&M ',
               text2: 'Our guid to the best mens\' collections',
             )
         ),
         MagazineContainer(
             Container: buildMagazineItem(
               InkWellMagazineItem: (){},
               image: 'https://i.pinimg.com/564x/dc/68/24/dc682407836b89c97eb2f42810ec8d81.jpg',
               text1: 'INSIDE H&M ',
               text2: 'Our guid to the best guy\' collections',
             )
         ),
         MagazineContainer(
             Container: buildMagazineItem(
               InkWellMagazineItem: (){},
               image: 'https://i.pinimg.com/564x/2d/2f/47/2d2f4782834293a221d8fdaf515681e9.jpg',
               text1: 'INSIDE H&M ',
               text2: 'Our guid to the best guy\' collections',
             )
         ),
       ];
       List<onBordingHomeScreen> homeBord = [
         onBordingHomeScreen(
             image: 'https://i.pinimg.com/564x/bb/b5/53/bbb553a4547158b90ced16cd284cbacd.jpg'
         ),
         onBordingHomeScreen(
             image: 'https://i.pinimg.com/564x/7e/11/30/7e1130641ddd9558f3e4241728b8c142.jpg'
         ),
         onBordingHomeScreen(
             image: 'https://i.pinimg.com/564x/11/59/7d/11597d7552ad22d8f6634314a92bbb50.jpg'
         ),
         onBordingHomeScreen(
             image: 'https://i.pinimg.com/564x/7a/1c/eb/7a1cebb85f483444947f31ffbb638f5f.jpg'
         )
       ];
       List<NewFashionHighlight> MostPopularList = [
         NewFashionHighlight(
           Container: buildNewFashionItem(
             color: cubit.isDark ? Colors.black : Colors.white,
             fontColor: cubit.isDark ? Colors.white : Colors.black,
             Inkweel: (){
               Navigator.push(
                   context,
                   MaterialPageRoute(builder: (context)=> Product_Layout(
                     imageOfProduct: 'https://i.pinimg.com/564x/35/20/b4/3520b42bc73fbaa71904e11b22a13d4a.jpg',
                     nameOfProduct: 'Jacket',
                     costOfProduct: 'EGP 400.00',
                   )
                   )
               );
             },
             icon: Clothes_Cubit.get(context).iconFav,
             favPress: (){
               Clothes_Cubit.get(context).ChangFav();
             },
             image: 'https://i.pinimg.com/564x/35/20/b4/3520b42bc73fbaa71904e11b22a13d4a.jpg' ,
             ProductCost: 'Jacket' ,
             ProductName: 'EGP 400.00',
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
                     imageOfProduct: 'https://i.pinimg.com/564x/da/c7/78/dac778873cc7932034afaa31f7d94bd8.jpg',
                     nameOfProduct: 'Jacket',
                     costOfProduct: 'EGP 600.00',
                   )
                   )
               );
             },
             icon: Clothes_Cubit.get(context).iconFav,
             favPress: (){
               Clothes_Cubit.get(context).ChangFav();
             },
             image: 'https://i.pinimg.com/564x/da/c7/78/dac778873cc7932034afaa31f7d94bd8.jpg' ,
             ProductCost: 'Jacket' ,
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
                     imageOfProduct: 'https://i.pinimg.com/564x/35/45/ab/3545ab03ffa3b805e364ec63f79073c4.jpg',
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
             image: 'https://i.pinimg.com/564x/35/45/ab/3545ab03ffa3b805e364ec63f79073c4.jpg' ,
             ProductCost: 'Jacket' ,
             ProductName: 'EGP 350.00',
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
                       imageOfProduct: 'https://i.pinimg.com/564x/c6/f7/7b/c6f77b2f48a7e97d73b7a0012832f88f.jpg',
                       nameOfProduct: 'Blofar',
                       costOfProduct: 'EGP 450.00',
                     )
                     )
                 );
               },
               icon: Clothes_Cubit.get(context).iconFav,
               favPress: (){
                 Clothes_Cubit.get(context).ChangFav();
               },
               image: 'https://i.pinimg.com/564x/c6/f7/7b/c6f77b2f48a7e97d73b7a0012832f88f.jpg' ,
               ProductCost: 'Blofar' ,
               ProductName: 'EGP 450.00',
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
