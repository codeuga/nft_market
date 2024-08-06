import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

class Bid {
  final String image;
  final String title;
  final String ends;
  final String price;
  Bid({
    required this.image,
    required this.title,
    required this.ends,
    required this.price,
  });
}

class BidTileWidget extends StatelessWidget {
  final Bid bid;
  const BidTileWidget({super.key, required this.bid});

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      width: 270,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(16)),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover, image: Image.asset(bid.image).image),
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
                      bid.title,
                      style: GoogleFonts.inter(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        color: Color(0xff0D1220),
                      ),
                    ),
                    Gap(8),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(text: "Ends in "),
                          TextSpan(
                            text: bid.ends,
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Color(0xffF86780),
                            ),
                          ),
                        ],
                        style: GoogleFonts.inter(
                          fontSize: 14,
                          color: Color(0xff909FB4),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    SvgPicture.asset("assets/bid.svg"),
                    Gap(4),
                    Text(
                      bid.price,
                      style: GoogleFonts.inter(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        color: Color(0xff0D1220),
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
