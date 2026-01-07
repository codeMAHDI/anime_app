
import 'package:figma_design/widgets/category_list.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    List imageList = [
      'assets/images/movie_1.png',
      'assets/images/movie_2.png',
      'assets/images/movie_3.png',
      'assets/images/movie_4.png',
      'assets/images/movie_5.png',
      'assets/images/movie_6.png'

    ];

    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: MediaQuery
                  .of(context)
                  .size
                  .height * 0.6,
              width: MediaQuery
                  .of(context)
                  .size
                  .width,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/background.png"),
                      fit: BoxFit.cover)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 22),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 20,
                          width: 30,
                          margin: const EdgeInsets.only(left: 24),
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/images/menu.png"),
                            ),
                          ),
                        ),
                        const Text(
                          "Watch Anime",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Container(
                          height: 27,
                          width: 27,
                          margin: const EdgeInsets.only(right: 43),
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/images/account.png"),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Text(
                        "Ayano",
                        style: GoogleFonts.inter(
                          color: Colors.white,
                          fontSize: 72,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 73,
                            width: 73,
                            margin: EdgeInsets.only(left: 17),
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image:
                                AssetImage("assets/images/play_button.png"),
                              ),
                            ),
                          ),
                          Text(
                            "Adventure . romantic.",
                            style: GoogleFonts.inter(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Container(
                            height: 27,
                            width: 27,
                            margin: const EdgeInsets.only(right: 43),
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets/images/info.png"),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(
              width: 15,
            ),
            /* CategoryList(
              categoryTitle: 'TOP 10 MOVIES',
              imageURL: "assets/images/movie_1.png", itemCount: imageList.length,
            ),*/
            const SizedBox(
              height: 15,
            ),
            CategoryList(
              categoryTitle: 'TOP RATED ANIME',
              imageURL: "assets/images/movie_2.png",
              imageURLList: imageList,
              itemCount: imageList.length,
            ),
          ],
        ),
      ),
    );
  }
}
