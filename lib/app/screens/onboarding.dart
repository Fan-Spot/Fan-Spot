import 'package:flutter/material.dart';
import 'package:fanshot/app/config/app_color.dart';
import 'package:flutter_svg/svg.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  Widget socialLoginButton({required String iconPath, required String text}) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 12, horizontal: 18),
      decoration: BoxDecoration(
        color: AppColor.whtie,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(iconPath),
          Text(
            text,
            style: TextStyle(
              fontFamily: 'Pretendard',
              fontSize: 16,
              fontWeight: FontWeight.w400,
              height: 1.50,
            ).copyWith(color: AppColor.gray900),
            textAlign: TextAlign.center,
          ),
          SizedBox(),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.background,
        body: Column(
          children: [
            Expanded(
              child: ListView(
                children: [
                  SizedBox(height: MediaQuery.of(context).size.height * 0.2),
                  SvgPicture.asset('assets/images/Logo.svg'),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.065),
                  Text(
                    "FanSPOT",
                    style: TextStyle(
                      fontFamily: 'Gotham',
                      fontSize: 30,
                      fontStyle: FontStyle.italic,
                      height: 0.93,
                      letterSpacing: -0.60,
                    ).copyWith(color: AppColor.yellow),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.18),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: [
                        socialLoginButton(
                          iconPath: 'assets/images/Google.png',
                          text: 'Google로 시작하기',
                        ),
                        SizedBox(height: 8),
                        socialLoginButton(
                          iconPath: 'assets/images/Spotify.png',
                          text: 'Spotify 시작하기',
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.01,
                        ),
                        Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: "개인정보 수집 및 이용",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontFamily: 'Pretendard',
                                  fontWeight: FontWeight.w400,
                                  decoration: TextDecoration.underline,
                                  decorationColor: AppColor.gray100,
                                  height: 1.67,
                                  letterSpacing: -0.24,
                                  color: AppColor.gray100,
                                ),
                              ),
                              TextSpan(
                                text: "과 서비스 이용약관에 \n동의함으로써 회원가입이 진행됩니다.",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontFamily: 'Pretendard',
                                  fontWeight: FontWeight.w400,
                                  height: 1.67,
                                  letterSpacing: -0.24,
                                  color: AppColor.gray100,
                                ),
                              ),
                            ],
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
