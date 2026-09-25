import 'package:flutter/material.dart';
import 'package:zync_music/common/widgets/button/basic_app_button.dart';
import 'package:zync_music/common/widgets/hero_widgets/app_logo_widget.dart';
import 'package:zync_music/core/configs/assets/app_images.dart';
//import 'package:zync_music/core/configs/assets/app_vectors.dart';
import 'package:zync_music/core/configs/theme/app_colors.dart';
import 'package:zync_music/presentation/auth/pages/signup_or_signin.dart';
// import 'package:zync_music/presentation/choose_mode/pages/choose_mode.dart';
//import 'package:flutter_svg/flutter_svg.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(AppImages.introBG),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(color: Colors.black.withAlpha(150)),
          Padding(
            padding: const EdgeInsets.only(left: 50,right: 50, bottom: 60, top: 100),
            child: Column(
                children: [
                  //  Padding(padding: EdgeInsets.only(top: 15)),
                  Align(
                    alignment: Alignment.topCenter,
                    child: AppLogoWidget(width: 160, height: 50)
                  ),
                  Spacer(),
                  Text(
                    "Your Music, Your World",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 30),
                  Text(
                    "Stream your favorite tracks, explore new releases, and enjoy endless listening anytime. From trending hits to timeless classics, all your music is here.",
                    style: TextStyle(
                      color: AppColors.greyText,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 50),
                  BasicAppButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) =>
                              const SignupOrSignin(),
                        ),
                      );
                    },
                    title: "Get Started",
                   // height: 72,
                  ),
                  SizedBox(height: 30),
                ],
              ),
          ),
        ],
      ),
    );
  }
}
