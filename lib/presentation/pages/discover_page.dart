import 'package:flutter/material.dart';
import 'package:parkcar_app/constants/color_constants.dart';
import 'package:parkcar_app/presentation/widgets/page_widget.dart';
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
          children: [_userInfo()],
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
}
