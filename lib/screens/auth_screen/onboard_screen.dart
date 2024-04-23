import 'package:ecartapp/screens/auth_screen/log_in_screen.dart';
import 'package:ecartapp/screens/auth_screen/signup_screen.dart';
import 'package:ecartapp/themes/colors.dart';
import 'package:ecartapp/themes/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../language/app_language_provider.dart';
import '../../language/app_localization.dart';
import '../../widgets/custom_buttom.dart';

class OnBoardScreen extends StatefulWidget {
  const OnBoardScreen({super.key});

  @override
  State<OnBoardScreen> createState() => _OnBoardScreenState();
}

class _OnBoardScreenState extends State<OnBoardScreen> {
  final List adsImages = [
    "assets/images/auth_screen/1.png",
    "assets/images/auth_screen/2.png",
    "assets/images/auth_screen/3.png",
    "assets/images/auth_screen/4.png",
    "assets/images/auth_screen/5.png",
  ];
  late AppLanguageProvider appLanguage;
  final controller = PageController(viewportFraction: 0.8, keepPage: true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Spacer(),
            SizedBox(
              width: MediaQuery.sizeOf(context).width * 1,
              height: MediaQuery.sizeOf(context).height * 0.26,
              child: PageView.builder(
                controller: controller,
                itemCount: adsImages.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    margin: const EdgeInsets.only(right: 20),
                    child: Image(
                        fit: BoxFit.cover,
                        width: MediaQuery.sizeOf(context).width * 1,
                        image: AssetImage(adsImages[index].toString())),
                  );
                },
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Expanded(
              child: Row(
                children: [
                  const SizedBox(
                    width: 30,
                  ),
                  SmoothPageIndicator(
                      controller: controller,
                      // PageController
                      count: adsImages.length,
                      effect: const ExpandingDotsEffect(
                          dotHeight: 10,
                          dotWidth: 10,
                          activeDotColor: AppColors.whiteColor,
                          dotColor: AppColors.fontGrey),
                      // your preferred effect
                      onDotClicked: (index) {
                        adsImages[index];
                      }),
                ],
              ),
            ),
            //const Expanded(child: SizedBox(height: 30,)),
            Container(
              height: MediaQuery.sizeOf(context).height * 0.50,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              decoration: const BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 3,
                        offset: Offset(0, 2),
                        color: AppColors.fontGrey)
                  ],
                  color: AppColors.whiteColor,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(35),
                      topRight: Radius.circular(35))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    AppLocalizations.of(context)!
                        .translate('welcomeText')
                        .toString(),
                    style: AppTextStyles.textStyles.copyWith(
                        color: AppColors.fontBlack,
                        fontWeight: FontWeight.w600,
                        fontSize: 16),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    AppLocalizations.of(context)!
                        .translate('startText')
                        .toString(),
                    style: AppTextStyles.textStyles.copyWith(
                        color: AppColors.darkFontGrey,
                        fontWeight: FontWeight.w600,
                        fontSize: 16),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    AppLocalizations.of(context)!.translate('stepText')!,
                    style: AppTextStyles.textStyles.copyWith(
                        color: AppColors.fontGrey,
                        fontWeight: FontWeight.w400,
                        fontSize: 14),
                  ),
                  const Spacer(),
                  CustomButton(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const LogInScreen()));
                      },
                      title: AppLocalizations.of(context)!
                          .translate('login')
                          .toString(),
                      buttonColor: AppColors.primaryColor,
                      textColor: AppColors.whiteColor),
                  const SizedBox(
                    height: 10,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SignUpScreen()));
                    },
                    child: Container(
                      height: 54,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        border: Border.all(color: AppColors.primaryColor),
                        borderRadius: BorderRadius.circular(15),
                        color: AppColors.whiteColor,
                      ),
                      child: Center(
                        child: Text(
                          AppLocalizations.of(context)!
                              .translate('signUp')
                              .toString(),
                          style: const TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: AppColors.primaryColor),
                        ),
                      ),
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
