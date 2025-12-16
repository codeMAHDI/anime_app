import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class CategoryList extends StatelessWidget {
  final String? categoryTitle;
  final String? imageURL;
  final List? imageURLList;
  final int itemCount;
  const CategoryList({super.key, this.categoryTitle, this.imageURL, this.imageURLList, required this.itemCount});
  @override
  Widget build(BuildContext context) {
    return   Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              categoryTitle?? "",
              style: GoogleFonts.allan(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontSize: 18),
            ),
            const SizedBox(
              width: 15,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 170,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: itemCount!,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    height: 160,
                    width: 110,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image:
                            AssetImage(imageURL![index])),
                        borderRadius: BorderRadius.circular(10)),
                  );
                }, separatorBuilder: (BuildContext context, int index) {
                return const SizedBox(width: 12,);
              },
              ),
            ),

          ],
        ));
  }
}
