import 'package:clothes_app/Layout/Clothes_Cubit/cubit.dart';
import 'package:clothes_app/Layout/Product_Layout/Product_Layout.dart';
import 'package:clothes_app/Modules/Women_Screen/Women_Screen.dart';
import 'package:clothes_app/shared/Componend_Classes/Componened_Class.dart';
import 'package:clothes_app/shared/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:url_launcher/url_launcher.dart';

Widget defaultButton({
  double width = double.infinity,
  double height = 50,
  Color backgroundColor = Colors.red,
  double topRightBorder = 25,
  double bottomLeftBorder = 25,
  double bottomRightBorder = 25,
  double topLeftBorder = 25,
  required String text,
  required OnPressedFunction,
  double fontsize = 25,
}) =>
    Container(
      height: height,
      width: width,
      child: MaterialButton(
        onPressed: OnPressedFunction,
        child: Text(
          text.toUpperCase(),
          style: TextStyle(
            fontSize: fontsize,
            color: Colors.white.withOpacity(0.8),
            fontWeight: FontWeight.w900,
          ),
        ),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(topRightBorder),
          bottomLeft: Radius.circular(bottomLeftBorder),
          bottomRight: Radius.circular(bottomRightBorder),
          topLeft: Radius.circular(topLeftBorder),
        ),
        color: backgroundColor,
      ),
    );
///////////////////////////////////
Widget defaultFormField({
  required TextInputType type,
  required String label,
  IconData? prefix,
  IconData? suffix,
  required TextEditingController controller,
  Validatorfunction,
  suffixPressedFunction,
  bool isScure = false,
  OnTap,
  int? maxLength,
  onChange,
  Color? fontLabelColor,
  Color? fontInputColor,
  double? fontSize,
  fontFamily,
  double textHeight = 0,
}) =>
    Container(
      height: 80,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
      child: TextFormField(
        maxLength: maxLength,
          maxLengthEnforcement: MaxLengthEnforcement.truncateAfterCompositionEnds,
          style: TextStyle(fontSize: 30, height: textHeight,color:fontInputColor,fontFamily:fontFamily ),
          textDirection: TextDirection.ltr,
          cursorHeight: 20,
          cursorColor: fontLabelColor,
          autocorrect: true,
          textAlign: TextAlign.start,
          controller: controller,
          keyboardType: type,
          validator: Validatorfunction,
          obscureText: isScure,
          onTap: OnTap,
          onChanged: onChange,
          decoration: InputDecoration(
            prefix: Icon(prefix,color: Colors.white.withOpacity(0.6)),
            suffix: IconButton(
                onPressed: suffixPressedFunction, icon: Icon(suffix,color: Colors.white.withOpacity(0.6),)),
            label: Padding(
              padding: const EdgeInsets.only(left: 40.0),
              child: Text(label),
            ),
            labelStyle: TextStyle(fontSize: fontSize, color: fontLabelColor),
          )),
    );
//////////////////////////////////////
void ShowToast({
  required String message,
  required ToastStates state,
}) =>
    Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: ChooseToastState(state),
        textColor: Colors.white,
        fontSize: 16.0);

enum ToastStates { SUCCESS, ERORR, WARNING }

Color ChooseToastState(ToastStates state) {
  Color color;
  switch (state) {
    case ToastStates.SUCCESS:
      color = Colors.green;
      break;
    case ToastStates.ERORR:
      color = Colors.red;
      break;
    case ToastStates.WARNING:
      color = Colors.amber;
      break;
  }
  return color;
}

//////////////////////////////////////////
Widget buildCategoryItem({
  required double heightOfContainer,
  double widthOfContainer = 180,
  String? image,
  InkwellCategory,
  required String nameOfCategory,
}) =>
    InkWell(
      onTap: InkwellCategory,
      child: Stack(
        alignment: AlignmentDirectional.centerStart,
        children: [
          Container(
            height: heightOfContainer,
            width: widthOfContainer,
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
            ),
            child: Image(
              image: NetworkImage('${image}'),
              fit: BoxFit.cover,
            ),
          ),
          Text(
            '${nameOfCategory}',
            style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.white.withOpacity(0.7)),
          )
        ],
      ),
    );
//////////////////////////////////////////
Widget defaultSmoothIndecator(
        {required PageController PageController, required int Count}) =>
    SmoothPageIndicator(
        controller: PageController,
        count: Count,
        effect: ExpandingDotsEffect(
            dotColor: Colors.grey,
            activeDotColor: defualtColor(),
            dotHeight: 10,
            dotWidth: 20,
            expansionFactor: 2,
            radius: 15,
            spacing: 10));
//////////////////////////////////////////
Widget buildMagazineItem({
  required String image,
  String? text1,
  String? text2,
  InkWellMagazineItem,
}) =>
    InkWell(
      onTap: InkWellMagazineItem,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15.0),
        child: Container(
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: Colors.grey[300],
          ),
          child: Column(
            children: [
              Stack(
                alignment: AlignmentDirectional.bottomCenter,
                children: [
                  Image(
                    width: 350,
                    height: 350,
                    fit: BoxFit.cover,
                    image: NetworkImage('${image}'),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 25.0),
                    child: Container(
                      width: 300,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(25)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            '${text1}',
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                          Text(
                            '${text2}',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
///////////////////////////////////////////
Widget buildNewFashionItem({
  String? image,
  String? ProductName,
  String? ProductCost,
  double imageHeight = 350,
  Inkweel,
  favPress,
  icon,
  color,
  fontColor
}) =>
    InkWell(
      onTap: Inkweel,
      child: Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: Container(
          width: 180,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(
              borderRadius:
              BorderRadius.circular(25),
              color: color,
          ),
          child: Column(
            children: [
              Stack(
                alignment: AlignmentDirectional.topEnd,
                children: [
                  Image(
                      width: 350,
                      height: imageHeight,
                      fit: BoxFit.cover,
                      image: NetworkImage('${image}')),
                  // IconButton(
                  //   onPressed: favPress,
                  //   icon: Icon(
                  //     icon,
                  //     size: 30,
                  //     color: defualtColor(),
                  //   ),
                  // )
                ],
              ),
              Text(
                '${ProductName}',
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Soka',
                  color: fontColor
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                '${ProductCost}',
                style: TextStyle(fontSize: 16, fontFamily: 'Soka',color: fontColor),
              ),
              SizedBox(
                height: 5,
              ),
            ],
          ),
        ),
      ),
    );
////////////////////////////////////////////
Widget buildTrendingItem({
  required String image,
  String? gender,
  String? personAge,
  color,
}) =>
    Column(
      children: [
        CircleAvatar(
          radius: 50,
          backgroundImage: NetworkImage(
            '${image}',
          ),
        ),
        Text(
          '${gender}',
          style: TextStyle(
            fontFamily: 'Soka',
            color: color
          ),
        ),
        Text(
          '${personAge}',
          style: TextStyle(
              fontFamily: 'Soka',
              fontWeight: FontWeight.bold,
              color: color
          ),
        ),
      ],
    );
//////////////////////////////////////////////////
Widget buildMagazineContainer(MagazineContainer widget) => Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [widget.Container],
    );
/////////////////////////////////////////////////
Widget buildOnBordigngHomeScreen(onBordingHomeScreen model) => Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          image: NetworkImage(model.image),
          width: 500,
          height: 500,
          fit: BoxFit.cover,
        )
      ],
    );
/////////////////////////////////////////////////
Widget buildNewFashionHighlight(NewFashionHighlight widget) => Column(
      children: [widget.Container],
    );
/////////////////////////////////////////////////
Widget buildTrendingListView(buildTrendingListVieww widget) => Row(
      children: [widget.CirleAvatar],
    );
/////////////////////////////////////////////////
// void SignOut(context){
//   CachHelper.removeData(key:'token').then((value){
//     if(value){
//       Navigator.pushReplacement(
//         context,
//         MaterialPageRoute(builder: (context)=>Login_Screen())
//         );
//       }
//   });
// }
