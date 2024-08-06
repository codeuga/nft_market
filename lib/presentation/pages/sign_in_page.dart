import 'package:flutter/material.dart';
import 'package:parkcar_app/presentation/pages/sign_up_page.dart';
import 'package:parkcar_app/presentation/widgets/button_widget.dart';
import 'package:parkcar_app/presentation/widgets/input_widget.dart';
import 'package:parkcar_app/presentation/widgets/page_widget.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gap/gap.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return PageWidget(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _body(),
            TextButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => SignUpPage(),
                ));
              },
              child: Text(
                "Create new account",
                style:
                    GoogleFonts.inter(color: Color(0xff909FB4), fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }

  SingleChildScrollView _body() {
    return SingleChildScrollView(
      child: Column(
        children: [
          Gap(60),
          Text(
            "Start Collecting\nAmazing Artworks",
            textAlign: TextAlign.center,
            style: GoogleFonts.inter(
                color: Color(0xff0D1220),
                fontSize: 26,
                fontWeight: FontWeight.w600,
                height: 36 / 26),
          ),
          Gap(40),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 30),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(24),
            ),
            child: Column(
              children: [
                InputWidget(
                  lable: "Email",
                ),
                InputWidget(
                  lable: "Password",
                  isPassword: true,
                ),
                Gap(10),
                ButtonWidget(
                  text: "Continue",
                  isFullWidth: true,
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
