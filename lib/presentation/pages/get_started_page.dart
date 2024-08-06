import 'package:flutter/material.dart';
import 'package:parkcar_app/presentation/pages/sign_up_page.dart';
import 'package:parkcar_app/presentation/widgets/button_widget.dart';
import 'package:parkcar_app/presentation/widgets/page_widget.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return PageWidget(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/Illustration.png"),
            Gap(60),
            Text(
              "Collect NFTs As\nYour Own Collection",
              textAlign: TextAlign.center,
              style: GoogleFonts.inter(
                  color: Color(0xff0D1220),
                  fontSize: 26,
                  fontWeight: FontWeight.w600,
                  height: 36 / 26),
            ),
            Gap(20),
            Text(
              "NFT is gonna help us to keep what\nis belong to us, like forever",
              textAlign: TextAlign.center,
              style: GoogleFonts.inter(
                color: Color(0xff909FB4),
                fontSize: 16,
                height: 26 / 16,
              ),
            ),
            Gap(40),
            ButtonWidget(
              onPressed: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) => SignUpPage(),
                  ),
                );
              },
              text: 'Getting Started',
            ),
          ],
        ),
      ),
    );
  }
}
