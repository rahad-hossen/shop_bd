import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop_bd/Screens/HomeScreens/Widget/Search_widget.dart';
import 'package:shop_bd/Screens/HomeScreens/Widget/banner_widget.dart';
import 'package:shop_bd/Screens/HomeScreens/Widget/catagories_list.dart';
import 'package:shop_bd/Screens/HomeScreens/Widget/current_banner.dart';
import 'package:shop_bd/Screens/HomeScreens/Widget/product_in_card.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {

  List<String> bannerList = ["discount_image.jpg", "banner_image2.avif", "banner_image3.jpg", "banner_image4.avif"];
  int current_index = 0;
  List<String> ItemList = ["Fasion", "Resturant", "Book", "Circuit", "Couch"];
  List<String> ItemImage = ["fashion.png", "restaurant.png", "book.png", "circuit.png", "couch.png"];
  List<Color> ColorCatagory = [Colors.yellow.shade300, Colors.orange.shade300, Colors.indigoAccent.shade200,
  Colors.white, Colors.redAccent.shade200];

  List<Map<String,dynamic>> products = [
    {
      "id": 0,
      "image" : "product1.jpg",
      "title" : "An amazing camera for photography and videography for professional persion",
      "amount": 4000
    },
    {
      "id": 1,
      "image" : "product2.png",
      "title" : "An amazing camera for photography and videography for professional persion",
      "amount": 500
    },
    {
      "id": 2,
      "image" : "product3.jpg",
      "title" : "An amazing camera for photography and videography for professional persion",
      "amount": 850
    },
    {
      "id": 3,
      "image" : "product4.jpg",
      "title" : "An amazing camera for photography and videography for professional persion",
      "amount": 1120
    },
    {
      "id": 4,
      "image" : "product5.avif",
      "title" : "An amazing camera for photography and videography for professional persion",
      "amount": 300
    },{
      "id": 1,
      "image" : "product2.png",
      "title" : "An amazing camera for photography and videography for professional persion",
      "amount": 500
    },
    {
      "id": 3,
      "image" : "product4.jpg",
      "title" : "An amazing camera for photography and videography for professional persion",
      "amount": 1120
    },

  ];

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

          // Banner section start
          SizedBox(
            height: 200,
            child: PageView(
              onPageChanged: (value){
                setState(() {
                  current_index = value;
                });

              },
              children:[
                for( String bannerlist in bannerList)
                  banner("lib/assets/Images/$bannerlist"),

              ]
            ),
          ),

          SizedBox(
            height: 40,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                for (int index = 0; index <bannerList.length; index++)
                  current_index == index? CurrentBanner(12.0): CurrentBanner(8.0),
              ],
            ),
          ),
          // Catagory Title
          SizedBox(
            height: 60,
            child: ListTile(
              title: Text("Catagories"),
              trailing: Text("SHOW ALL", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.indigo),),
            ),
          ),
          // catagory section..
          SizedBox(
            height: 100,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                for (int i = 0; i<ItemList.length; i++)
                  CatagoriesList(image: ItemImage[i], title: ItemList[i], color: ColorCatagory[i]),
              ],
            ),
          ),
          GridView.count(
            crossAxisCount: 2,
            mainAxisSpacing: 5,
            crossAxisSpacing: 5,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            children: [
              //An amazing Camera for videography & Photography. For a person its very productive product.
              for(var product in products)
                ProductInCard(image: "${product["image"]}", title: "${product["title"]}", amount: product["amount"] ),
            ],

          )





        ],
      ),

    );
  }
}
