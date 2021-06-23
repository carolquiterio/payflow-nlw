import 'package:app/shared/themes/app_colors.dart';
import 'package:app/shared/themes/app_images.dart';
import 'package:app/shared/themes/app_text_styles.dart';
import 'package:app/shared/widgets/social_login_button.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  LoginPageState createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: AppColors.background,
        body: Container(
          width: size.width,
          height: size.height,
          child: Stack(
            children: [
              Container(
                width: size.width,
                height: size.height * 0.36,
                color: AppColors.primary,
              ),
              Positioned(
                  top: 40,
                  left: 0,
                  right: 0,
                  child: Image.asset(
                    AppImages.person,
                    width: 208,
                    height: 373,
                  )),
              Positioned(
                  bottom: size.height * 0.07,
                  left: 0,
                  right: 0,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(AppImages.logomini),
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 30, left: 70, right: 70),
                        child: Text("Organize seus boletos em um só lugar",
                            style: TextStyles.titleHome,
                            textAlign: TextAlign.center),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 40, top: 40, right: 40),
                        child: SocialLoginButton(onTap: () {
                          print("clicou");
                        }),
                      )
                    ],
                  ))
            ],
          ),
        ));
  }
}
