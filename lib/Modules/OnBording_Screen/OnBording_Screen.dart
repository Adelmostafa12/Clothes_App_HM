import 'package:clothes_app/Modules/Login_Screen/Login_Screen.dart';
import 'package:clothes_app/shared/components/components.dart';
import 'package:clothes_app/shared/styles/colors.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class BordingModel{
  final String image;
  BordingModel({required this.image});
}

class OnBording_Screen extends StatefulWidget {
  const OnBording_Screen({Key? key}) : super(key: key);

  @override
  State<OnBording_Screen> createState() => _OnBording_ScreenState();
}

class _OnBording_ScreenState extends State<OnBording_Screen> {


  var BordingController = PageController();

  List<BordingModel> bording =[
    BordingModel(
        image: 'https://media.istockphoto.com/photos/excited-woman-wearing-rainbow-cardigan-picture-id1327495280?k=20&m=1327495280&s=170667a&w=0&h=bk3MU3owpx2Ub4uY7zzB9maj5_jS9LJD2ouuybIZWOs='
    ),
    BordingModel(
        image: 'https://i.pinimg.com/564x/6c/f7/2f/6cf72fc8fc76763c4e2945bd546f0a92.jpg'
    ),
    BordingModel(
        image: 'https://i.pinimg.com/564x/c3/2c/66/c32c66a19fd305e068c5fef4cba69ae3.jpg'
    ),
    BordingModel(
        image: 'https://i.pinimg.com/564x/2b/ed/f9/2bedf947f548ac42fba9866a6d47ee8a.jpg'
    ),
  ];

  bool isLast = false ;

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'H&M',
          style: TextStyle(
              color: Colors.red
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: TextButton(
                onPressed: (){
                  Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context)=>Login_Screen())
            );
                  },
                child:Text(
                  'Skip',
                  style: TextStyle(
                      color: Colors.red,
                      fontSize: 30,
                    fontWeight: FontWeight.w900
                  ),
                ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 40.0,right: 25,left: 25),
        child: Column(
          children: [
            Text(
              'Simple Look About Our Application',
              style: TextStyle(
                  fontSize: 30,
                  color: defualtColor()
              ),
            ),
            SizedBox(height: 10,),
            Container(
              width: 500,
              height: 500,
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.white
              ),
              child:PageView.builder(
                itemBuilder: (context,index)=>buildBording(bording[index]),
                physics: BouncingScrollPhysics(),
                controller: BordingController,
                itemCount: bording.length,
                onPageChanged: (int index){
                  if(index == bording.length-1){
                    setState(() {
                      isLast = true;
                    });
                  }else{
                    setState(() {
                      isLast = false;
                    });
                  }
                },
                clipBehavior: Clip.antiAlias,
              ),
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                SmoothPageIndicator(
                  controller: BordingController,
                  count: bording.length,
                  effect:ExpandingDotsEffect(
                      dotColor: Colors.grey,
                      activeDotColor: defualtColor(),
                      dotHeight: 10,
                      dotWidth: 20,
                      expansionFactor: 2,
                      radius: 15,
                      spacing: 10
                  )
                ),
                Spacer(),
                FloatingActionButton(
                  onPressed: (){
                    if(isLast){
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context)=>Login_Screen())
                      );
                    }else{
                      BordingController.nextPage(
                          duration: Duration(
                              microseconds: 800
                          ),
                          curve: Curves.linear
                      );
                    }
                  },
                  child: Icon(Icons.arrow_forward_ios_rounded,),
                )
              ],
            ),
            SizedBox(height: 10,),
            Text(
              'Let\'s Sign Up And Join Us ',
              style: TextStyle(
                fontSize: 30,
                color: defualtColor()
              ),
            ),
          ],
        ),
      ),
    );
  }
  Widget buildBording(BordingModel model)=>Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Image(
          image: NetworkImage('${model.image}'),
        width: 500,
        height: 500,
        fit: BoxFit.cover,
      )
    ],
  );
}


