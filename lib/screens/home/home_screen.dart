import 'package:flutter/material.dart';
import 'package:flutter_catalog/model/place_model.dart';
import 'package:flutter_catalog/screens/detailscreen/details_screen.dart';
import 'package:flutter_catalog/screens/home/widgets/category_card.dart';
import 'package:flutter_catalog/screens/home/widgets/recommended_card.dart';
import 'package:flutter_catalog/utilities/colors.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                "assets/icons/home.png",
                height: 35,
                width: 35,
                color: kPrimaryClr,
                ),
                Image.asset(
                "assets/icons/calendar.png",
                height: 35,
                width: 35,
                color: Colors.grey,
                ),
                Image.asset(
                "assets/icons/bookmark.png",
                height: 35,
                width: 35,
                color: Colors.grey,
                ),
                Image.asset(
                "assets/icons/chat.png",
                height: 35,
                width: 35,
                color: Colors.grey,
                ),
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 15),
          child: SingleChildScrollView(
            child: Column(children: [
              // app bar
            Row(
              children: [
                const CircleAvatar(
                  radius: 27,
                  backgroundImage: AssetImage("assets/icons/man.png"),
                ),
              const  SizedBox(
                  width: 15,
                ),
                RichText(text: const TextSpan(
                  text: "Hello",
                  style: TextStyle(
                    color: kBlackClr, 
                    fontSize: 18
                    ), 
                  children: [
                  TextSpan(
                    text: ", Mohan!",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18
                    )
                  )
                  
                ]) )
              ],
            ),
            //search Section
            const  SizedBox(
              height: 8,
                  width: 15,
            ),
            const Text(
              "Explore new destinations", 
              style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.bold
            ),
            ),  
            const  SizedBox(
              height: 4,
                width: 20,
              ),
              Material(
                borderRadius: BorderRadius.circular(100),
                elevation: 5,
                child: Container(
                  decoration: BoxDecoration(color: kWhiteClr,borderRadius: BorderRadius.circular(100)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            decoration:const InputDecoration(
                              hintText: "Search your destination",
                              prefixIcon: Icon(Icons.search),
                              enabledBorder: InputBorder.none,
                              focusedBorder: InputBorder.none
                            ),
                          ),
                        ),
                        const CircleAvatar(
                          radius: 22,
                          backgroundColor: kPrimaryClr,
                          child: Icon(
                            Icons.sort_by_alpha_sharp,
                            color: kWhiteClr,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
          
              // Category
            const  SizedBox(
                  width: 20,
                  height: 14,
            ),
            const Row(
              children: [
                 Text(
                  "Category", 
                  style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold
                ),
                ),
              ],
            ),  
            const  SizedBox(
                width: 20,
              ),
              Container(
                height: 95,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Row(
                      children: [
                        CategoryCard(
                          press: (){},
                          image: "assets/images/mountains.jpeg",
                          title: "Mountains",
                        ),
                        CategoryCard(
                          press: (){},
                          image: "assets/images/forests.jpeg",
                          title: "Forests",
                        ),
                        CategoryCard(
                          press: (){},
                          image: "assets/images/sea.webp",
                          title: "Sea",
                        ),
                        CategoryCard(
                          press: (){},
                          image: "assets/images/deserts.jpeg",
                          title: "Deserts",
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              // Recommended
              const  SizedBox(
                  width: 10,
                  height: 3,
            ),
            const Row(
              children: [
                 Text(
                  "Recommended", 
                  style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold
                ),
                ),
              ],
            ),  
            const  SizedBox(
                width: 10,
              ),
              Container(
                height: 320,
                child: ListView.builder(
                  itemCount: places.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: ((context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 5,right: 15),
                    child: Row(
                        children: [
                          RecommendedCard(
                            placeInfo: places[index], 
                            press: () { 
                              Navigator.push(context, MaterialPageRoute(
                                builder: (context)=>DetailScreen(
                                  placeInfo: places[index],
                                  )));
                             },)
                        ],
                      ),
                  );
                })),
              )
            ]),
          ),
        ),
    ));
  }
}