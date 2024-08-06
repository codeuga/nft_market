import 'package:flutter/material.dart';
import 'package:nft_market/constants/color_constants.dart';
import 'package:nft_market/presentation/widgets/bid_tile_widget.dart';
import 'package:nft_market/presentation/widgets/page_widget.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DiscoverPage extends StatelessWidget {
  const DiscoverPage({super.key});

  @override
  Widget build(BuildContext context) {
    return PageWidget(
      child: SingleChildScrollView(
        child: Column(
          children: [
            _userInfo(),
            _popularsBids(),
            _browse(),
          ],
        ),
      ),
    );
  }

  Widget _userInfo() => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  width: 60,
                  height: 60,
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: ColorConstants.primary),
                    borderRadius: BorderRadius.circular(60 / 2),
                  ),
                  child: Image.asset("assets/profile.png"),
                ),
                Gap(12),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Anugrah Dwi",
                      style: GoogleFonts.inter(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff0D1220),
                      ),
                    ),
                    Gap(6),
                    Text(
                      "Level 109",
                      style: GoogleFonts.inter(
                        fontSize: 14,
                        color: Color(0xff909FB4),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            CircleAvatar(
              backgroundColor: Colors.white,
              child: IconButton(
                onPressed: () {},
                icon: SvgPicture.asset("assets/notification.svg"),
              ),
            ),
          ],
        ),
      );

  Widget _popularsBids() {
    var bids = [
      Bid(
          image: "assets/image2.png",
          title: "The Masa",
          ends: "35m 11s",
          price: "12.4"),
      Bid(
          image: "assets/image1.png",
          title: "Centre",
          ends: "35m 11s",
          price: "12.4"),
    ];
    return Padding(
      padding: EdgeInsets.only(top: 36),
      child: _listTile(
        title: "Popular Bids",
        itemHeight: 268,
        itemCount: bids.length,
        itemBuilder: (context, index) => BidTileWidget(bid: bids[index]),
      ),
    );
  }

  Widget _browse() => Padding(
        padding: EdgeInsets.only(top: 36),
        child: _listTile(
          title: "Browse",
          itemHeight: 196,
          itemBuilder: (context, index) => Text("$index"),
        ),
      );

  Column _listTile(
      {required String title,
      required double itemHeight,
      required NullableIndexedWidgetBuilder itemBuilder,
      int itemCount = 5}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Text(
            title,
            style: GoogleFonts.inter(
              fontWeight: FontWeight.w600,
              fontSize: 18,
              color: Color(0xff0D1220),
            ),
          ),
        ),
        Gap(16),
        SizedBox(
          height: itemHeight,
          child: ListView.separated(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.symmetric(horizontal: 24),
              itemBuilder: itemBuilder,
              separatorBuilder: (context, index) => Gap(24),
              itemCount: itemCount),
        )
      ],
    );
  }
}
