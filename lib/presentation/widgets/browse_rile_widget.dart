import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class Browse {
  final String image;
  final String title;
  final String itemCount;
  Browse({
    required this.image,
    required this.title,
    required this.itemCount,
  });
}

class BrowseRileWidget extends StatelessWidget {
  final Browse browse;
  const BrowseRileWidget({super.key, required this.browse});

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      width: 140,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(16)),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover, image: Image.asset(browse.image).image),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      browse.title,
                      style: GoogleFonts.inter(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        color: Color(0xff0D1220),
                      ),
                    ),
                    Text(
                      browse.itemCount,
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Color(0xff909FB4),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
