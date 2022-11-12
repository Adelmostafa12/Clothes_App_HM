import 'package:clothes_app/Layout/Clothes_Cubit/cubit.dart';
import 'package:clothes_app/Layout/Clothes_Cubit/states.dart';
import 'package:clothes_app/Layout/Product_Layout/Product_Layout.dart';
import 'package:clothes_app/shared/Componend_Classes/Componened_Class.dart';
import 'package:clothes_app/shared/components/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Women_Screen extends StatelessWidget {
  var MagazinPageVeiwController = PageController();
  var homeBordingController = PageController();

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
                        imageOfProduct: 'https://images.unsplash.com/photo-1524250502761-1ac6f2e30d43?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=388&q=80',
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
                image: 'https://images.unsplash.com/photo-1524250502761-1ac6f2e30d43?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=388&q=80' ,
                ProductCost: 'T-Shirt' ,
                ProductName: 'EGP 149.00',
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
                        imageOfProduct: 'https://images.unsplash.com/photo-1482849297070-f4fae2173efe?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
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
                image: 'https://images.unsplash.com/photo-1482849297070-f4fae2173efe?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80' ,
                ProductCost: 'Shirt' ,
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
                        imageOfProduct: 'https://images.unsplash.com/photo-1546961342-ea5f71b193f3?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80' ,
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
                image: 'https://images.unsplash.com/photo-1546961342-ea5f71b193f3?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80' ,
                ProductCost: 'Jacket' ,
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
                        imageOfProduct: 'https://images.unsplash.com/photo-1529139574466-a303027c1d8b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80' ,
                        nameOfProduct: 'T-Shirt',
                        costOfProduct: 'EGP 180.000',
                      )
                      )
                  );
                },
                icon: Clothes_Cubit.get(context).iconFav,
                favPress: (){
                  Clothes_Cubit.get(context).ChangFav();
                },
                image: 'https://images.unsplash.com/photo-1529139574466-a303027c1d8b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80' ,
                ProductCost: 'T-Shirt' ,
                ProductName: 'EGP 180.00',
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
                        imageOfProduct: 'https://images.unsplash.com/photo-1603344797033-f0f4f587ab60?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80' ,
                        nameOfProduct: 'Long Shirt',
                        costOfProduct: 'EGP 200.00',
                      )
                      )
                  );
                },
                icon: Clothes_Cubit.get(context).iconFav,
                favPress: (){
                  Clothes_Cubit.get(context).ChangFav();
                },
                image: 'https://images.unsplash.com/photo-1603344797033-f0f4f587ab60?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80' ,
                ProductCost: 'Long Shirt' ,
                ProductName: 'EGP 200.00',
              )
          ),
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
                        imageOfProduct: 'https://i.pinimg.com/736x/9f/c1/43/9fc1431acfcb103784c56bc7de447be6.jpg',
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
                image: 'https://i.pinimg.com/736x/9f/c1/43/9fc1431acfcb103784c56bc7de447be6.jpg' ,
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
                        imageOfProduct: 'https://i.pinimg.com/564x/2a/63/d8/2a63d8476430a7c2c8dc03acec9b70fe.jpg',
                        nameOfProduct: 'Jacket',
                        costOfProduct: 'EGP 750.00',
                      )
                      )
                  );
                },
                icon: Clothes_Cubit.get(context).iconFav,
                favPress: (){
                  Clothes_Cubit.get(context).ChangFav();
                },
                image: 'https://i.pinimg.com/564x/2a/63/d8/2a63d8476430a7c2c8dc03acec9b70fe.jpg' ,
                ProductCost: 'Jacket' ,
                ProductName: 'EGP 750.00',
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
                        imageOfProduct: 'https://i.pinimg.com/564x/8b/ce/22/8bce2241e1c1d78b12eed9269349c6a3.jpg' ,
                        nameOfProduct: 'Hoodie',
                        costOfProduct: 'EGP 400.00',
                      )
                      )
                  );
                },
                icon: Clothes_Cubit.get(context).iconFav,
                favPress: (){
                  Clothes_Cubit.get(context).ChangFav();
                },
                image: 'https://i.pinimg.com/564x/8b/ce/22/8bce2241e1c1d78b12eed9269349c6a3.jpg' ,
                ProductCost: 'Jacket' ,
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
                        imageOfProduct: 'https://i.pinimg.com/564x/08/0e/ff/080effb55fe8139b9aef664bfe33f1be.jpg' ,
                        nameOfProduct: 'Shirt',
                        costOfProduct: 'EGP 300.000',
                      )
                      )
                  );
                },
                icon: Clothes_Cubit.get(context).iconFav,
                favPress: (){
                  Clothes_Cubit.get(context).ChangFav();
                },
                image: 'https://i.pinimg.com/564x/08/0e/ff/080effb55fe8139b9aef664bfe33f1be.jpg' ,
                ProductCost: 'Shirt' ,
                ProductName: 'EGP 300.00',
              )
          ),
        ];
        List<MagazineContainer> MagazinList = [
          MagazineContainer(
              Container: buildMagazineItem(
                InkWellMagazineItem: (){},
                image: 'https://images.unsplash.com/photo-1531123414780-f74242c2b052?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1887&q=80',
                text1: 'INSIDE H&M ',
                text2: 'Our guid to the best womens\' collections',
              )
          ),
          MagazineContainer(
              Container: buildMagazineItem(
                InkWellMagazineItem: (){},
                image: 'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
                text1: 'INSIDE H&M ',
                text2: 'Our guid to the best womens\' collections',
              )
          ),
          MagazineContainer(
              Container: buildMagazineItem(
                InkWellMagazineItem: (){},
                image: 'https://i.pinimg.com/564x/47/87/d0/4787d04e7fc4f034ff1c845be78f43a8.jpg',
                text1: 'INSIDE H&M ',
                text2: 'Our guid to the best womens\' collections',
              )
          ),
        ];
        List<onBordingHomeScreen> homeBord = [
          onBordingHomeScreen(
              image: 'https://i.pinimg.com/564x/4c/14/2d/4c142db0dbbd21a2dbc3f66fc6399119.jpg'
          ),
          onBordingHomeScreen(
              image: 'https://i.pinimg.com/736x/f3/4c/7e/f34c7e478bc4eb1491cbdcb4899c5401.jpg'
          ),
          onBordingHomeScreen(
              image: 'https://i.pinimg.com/564x/fa/9d/ec/fa9dece633afacbeb141fa8bb458e9e6.jpg'
          ),
          onBordingHomeScreen(
              image: 'https://i.pinimg.com/564x/0c/46/48/0c4648c755e626d6534334630f509a15.jpg'
          )
        ];
        return Scaffold(
          body: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.only(top: 30.0),
              child: Column(
                children: [
                  Container(
                    height: 420,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
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
                    color: Colors.pink.withOpacity(0.9),
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
                    color: cubit.isDark ? Colors.black : Colors.white,
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
                                color:cubit.isDark ? Colors.grey[900] : Colors.white,
                                borderRadius: BorderRadius.circular(25)
                            ),
                            child: Column(
                              children: [
                                 Text(
                                  'New Collection,New Era',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 35,
                                    color: cubit.isDark ? Colors.white.withOpacity(0.6):Colors.black
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
                  const SizedBox(height: 20,),
                  Container(
                    height: 420,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: ListView.separated(
                          physics: const BouncingScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context,index) => buildNewFashionHighlight(MostPopularList[index]),
                          separatorBuilder:(context,index) => const SizedBox(width: 16,) ,
                          itemCount: MostPopularList.length
                      ),
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
                  const SizedBox(height: 10,),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
