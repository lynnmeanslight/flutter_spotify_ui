import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:spotify_ui/common/helpers/is_dark.dart';
import 'package:spotify_ui/common/widgets/button/basic_app_button.dart';
import 'package:spotify_ui/core/configs/assets/app_images.dart';
import 'package:spotify_ui/core/configs/assets/app_vectors.dart';
import 'package:spotify_ui/core/configs/theme/app_colors.dart';

class RegisterSignInPage extends StatelessWidget {
  const RegisterSignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Align(
            alignment: Alignment.topRight,
            child: SvgPicture.asset(
              AppVectors.topPattern,
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: SvgPicture.asset(
              AppVectors.bottomPattern,
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Image.asset(
              AppImages.authBg,
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 70.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Align(
                    child: SvgPicture.asset(
                      AppVectors.logo,
                    ),
                  ),
                  const SizedBox(
                    height: 55,
                  ),
                  const Text(
                    "Enjoy Listening To Music",
                    style: TextStyle(
                      color: Color(0xff383838),
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    textAlign: TextAlign.center,
                    "Spotify is a proprietary Swedish audio streaming and media services provider ",
                    style: TextStyle(
                      color: Color(0xff383838),
                      fontSize: 15,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child:
                            BasicAppButton(onPressed: () {}, title: "Register"),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        flex: 1,
                        child: TextButton(
                          onPressed: () {},
                          child: Text(
                            "Sigin in",
                            style: TextStyle(
                              fontSize: 19,
                              fontWeight: FontWeight.bold,
                              color: context.isDarkMode
                                  ? Colors.white
                                  : Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
