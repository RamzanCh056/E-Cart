import 'package:ecartapp/screens/auth_screen/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../bottom_bar/bottom_bar.dart';
import '../../language/app_language_provider.dart';
import '../../language/app_localization.dart';
import '../../themes/colors.dart';
import '../../themes/text_styles.dart';
import '../../widgets/custom_buttom.dart';
import '../../widgets/custom_textField.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({Key? key}) : super(key: key);

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  bool _isObsecure = true;
  bool value = false;
  late AppLanguageProvider appLanguage;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    appLanguage = Provider.of<AppLanguageProvider>(context);
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,

            children: [

             Expanded(
               child: ListView(
                 children: [
                  Text(
                    AppLocalizations.of(context)!.translate('login').toString(),
                      style: AppTextStyles.textStyles.copyWith(  fontWeight: FontWeight.w600,
                          fontSize: 24,
                          color: AppColors.fontGrey),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                        Text(
                          AppLocalizations.of(context)!.translate('logInAccount').toString()
                    ,
                      style:AppTextStyles.textStyles.copyWith(  fontWeight: FontWeight.w500,
                          fontSize: 14,
                          color: AppColors.fontGrey),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                 Text(
                   AppLocalizations.of(context)!.translate('email').toString()
              ,
                      style:AppTextStyles.textStyles.copyWith(  fontWeight: FontWeight.w600,
                          fontSize: 14,
                          color: AppColors.fontGrey),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Form(
                      key: _formKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CustomTextField(
                            hintText: "Vhnet@gmail.com",
                            controller: emailController,
                            validator:  (value) {
                              if (value == null || value.isEmpty) {
                                return     AppLocalizations.of(context)!.translate('emailReq').toString();
                              } else if (!value.contains('@') &&
                                  !value.contains('.com')) {
                                return     AppLocalizations.of(context)!.translate('emailInvalid').toString();
                              } else {
                                return null;
                              }
                            },
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Text(
                            AppLocalizations.of(context)!.translate('password').toString(),
                            style:AppTextStyles.textStyles.copyWith(  fontWeight: FontWeight.w600,
                                fontSize: 14,
                                color: AppColors.fontGrey),
                          ),

                          const SizedBox(
                            height: 10,
                          ),
                          CustomTextField(
                            hintText: AppLocalizations.of(context)!.translate('password').toString(),
                            controller: passwordController,
                            isPassword: _isObsecure,
                            validator:  (value) {
                              if (value == null || value.isEmpty) {
                                return AppLocalizations.of(context)!.translate('passwordReq').toString();
                              }
                              return null; // Return null for no validation errors
                            },
                            suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  _isObsecure = !_isObsecure;
                                });
                              },
                              icon: _isObsecure
                                  ?Icon(Icons.visibility_off,color: AppColors.fontGrey,): const Icon(
                                Icons.visibility_outlined,
                                color:AppColors.fontGrey,
                              ),
                            ),
                          ),

                        ],),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    CustomButton(
                        onTap: () {
                          if (_formKey.currentState!.validate()) {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=> BottomNavBar()));
                          }
                        },
                        title:AppLocalizations.of(context)!.translate('login').toString(), buttonColor: AppColors.primaryColor, textColor: AppColors.whiteColor,),
                    const SizedBox(
                      height: 40,
                    ),
                Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                            child: Divider(
                              thickness: 2,
                              color: AppColors.fontGrey,
                            )),
                        SizedBox(
                          width: 10,
                        ),
                        Text(AppLocalizations.of(context)!.translate('orSignInWith').toString(),style: AppTextStyles.textStyles.copyWith(fontSize: 14,color: AppColors.fontGrey),),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                            child: Divider(
                              thickness: 2,
                              color: AppColors.fontGrey,
                            )),
                      ],
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SizedBox(
                            height: 50,
                            width: 50,
                            child: Image.asset(
                                "assets/icons/auth_screen/face.png")),
                        SizedBox(
                            height: 50,
                            width: 50,
                            child: Image.asset(
                                "assets/icons/auth_screen/google.png")),
                        SizedBox(
                            height: 50,
                            width: 50,
                            child: Image.asset(
                                "assets/icons/auth_screen/twetter.png")),
                      ],
                    ),
                  ],
                ),
             ),
              GestureDetector(
                onTap: () {
Navigator.push(context, MaterialPageRoute(builder: (context)=> SignUpScreen()));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RichText(
                      text: TextSpan(
                          text: AppLocalizations.of(context)!.translate("dontAcc").toString(),
                          style:AppTextStyles.textStyles.copyWith(  fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff101010)),
                          children: [
                            TextSpan(
                              text:AppLocalizations.of(context)!.translate('signUpL').toString(),
                              style:AppTextStyles.textStyles.copyWith(fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: AppColors.primaryColor),
                            )
                          ]),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20,)
            ],
          ),
        ),
      ),
    );
  }
}
