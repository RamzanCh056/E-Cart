import 'package:flutter/material.dart';
import '../../language/app_localization.dart';
import '../../themes/colors.dart';
import '../../themes/text_styles.dart';
import '../../widgets/custom_buttom.dart';
import '../../widgets/custom_textField.dart';
import 'log_in_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool _isObsecure = true;
  bool value = false;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController userNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
mainAxisAlignment: MainAxisAlignment.start,
            children: [
             Expanded(
               child: ListView(
                 children: [
                           Text(
                             AppLocalizations.of(context)!.translate('signUp').toString(),
                      style: AppTextStyles.textStyles.copyWith(  fontWeight: FontWeight.w600,
                          fontSize: 24,
                          color: AppColors.fontGrey),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                Text(
                  AppLocalizations.of(context)!.translate('createAcc').toString(),
                  style:AppTextStyles.textStyles.copyWith(  fontWeight: FontWeight.w500,
                      fontSize: 14,
                      color: AppColors.fontGrey),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                Text(
                  AppLocalizations.of(context)!.translate('name').toString(),
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
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CustomTextField(
                            controller: userNameController,
                            hintText: "Vhnet",
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return AppLocalizations.of(context)!.translate('nameReq').toString();
                              }
                              return null; // Return null for no validation errors
                            },
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                        Text(
                          AppLocalizations.of(context)!.translate('email').toString(),
                            style:AppTextStyles.textStyles.copyWith(  fontWeight: FontWeight.w600,
                                fontSize: 14,
                                color: AppColors.fontGrey),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          CustomTextField(
                            controller: emailController,
                            hintText: "Vhnet@gmail.com",
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return AppLocalizations.of(context)!.translate('emailReq').toString();
                              } else if (!value.contains('@') &&
                                  !value.contains('.com')) {
                                return AppLocalizations.of(context)!.translate('emailInvalid').toString();
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
                            controller: passwordController,
                            hintText:AppLocalizations.of(context)!.translate('password').toString(),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return AppLocalizations.of(context)!.translate('passwordReq').toString();
                              }
                              return null; // Return null for no validation errors
                            },
                            isPassword: _isObsecure,
                            suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  _isObsecure = !_isObsecure;
                                });
                              },
                              icon: _isObsecure
                                  ? const Icon(Icons.visibility_off,color: AppColors.fontGrey,)
                                  : const Icon(
                                Icons.visibility_outlined,
                                color: AppColors.fontGrey,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(
                      height: 40,
                    ),
                    CustomButton(
                      title: AppLocalizations.of(context)!.translate('signUp').toString(),
                      onTap: () async {
                        if (_formKey.currentState!.validate()) {
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute<void>(
                          //       builder: (BuildContext context) =>
                          //       const AddProfileImage()),
                          // );
                       }


                      }, buttonColor: AppColors.primaryColor, textColor: AppColors.whiteColor,
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Expanded(
                            child: Divider(
                              thickness: 2,
                              color: AppColors.fontGrey,
                            )),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(AppLocalizations.of(context)!.translate('orSignupWith').toString(),style: AppTextStyles.textStyles.copyWith(fontSize: 14,color: AppColors.fontGrey),),
                        const SizedBox(
                          width: 10,
                        ),
                        const Expanded(
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
                       SizedBox(  height: 50,width: 50,child: Image.asset("assets/icons/auth_screen/face.png")),
                       SizedBox(
                           height: 50,width: 50,
                           child: Image.asset("assets/icons/auth_screen/google.png")),
                       SizedBox(  height: 50,width: 50,child: Image.asset("assets/icons/auth_screen/twetter.png")),
                     ],
                   ),



                    const SizedBox(
                      height: 20,
                    ),

                  ],
                ),
             ),
              TextButton(
                onPressed: () {
                  setState(() {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => const LogInScreen())));
                  });
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RichText(
                      text: TextSpan(
                          text: AppLocalizations.of(context)!.translate('alreadyAcc').toString(),
                          style:AppTextStyles.textStyles.copyWith(  fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: const Color(0xff101010)),
                          children: [
                            TextSpan(
                              text:AppLocalizations.of(context)!.translate('login').toString(),
                              style:AppTextStyles.textStyles.copyWith(fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: AppColors.primaryColor),
                            )
                          ])
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20,),
            ],
          ),
        ),
      ),
    );
  }
}
