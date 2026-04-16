import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop_bd/Screens/HomeScreens/Widget/Search_widget.dart';
import 'package:shop_bd/Screens/HomeScreens/Widget/banner_widget.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {

  List<String> bannerList = ["discount_image.jpg", "banner_image2.avif", "banner_image3.jpg", "banner_image4.avif"];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Image.asset("lib/assets/logo/bd_shop_logo.png",width: 60,),
            SizedBox(width: 10,),
            Text("Shop BD"),
          ],
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Badge(
              label: Text("2"),
              child: Icon(CupertinoIcons.bell,size: 25,),
            ),
          )
        ],
      ),
      body: ListView(
        children: [
          SearchCard(),

          SizedBox(
            height: 200,
            child: PageView(
              children:[
                for( String banner in bannerList)
                  banner("lib/assets/Images/banner"),
              ]
            ),
          )


        ],
      ),

    );
  }
}
