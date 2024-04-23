
import 'package:ecartapp/themes/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_settings_ui/flutter_settings_ui.dart';
import 'package:provider/provider.dart';
import '../../language/app_language_provider.dart';
import '../../language/app_localization.dart';


class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  //String selectedValue = 'English';
  late AppLanguageProvider appLanguage;
  String selectedValue = '';

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // Initialize appLanguage when dependencies change
    appLanguage = Provider.of<AppLanguageProvider>(context);
    // Retrieve the current language from the AppLanguageProvider
    selectedValue = appLanguage.appLocal.languageCode;
  }

  void showDialogFun() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return StatefulBuilder(

          builder: (BuildContext context, StateSetter setState) {
            return AlertDialog(
              title: const Center(child: Text('Select Language')),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  ListTile(
              //       leading:CircleAvatar(
              //     backgroundImage: NetworkImage("https://as2.ftcdn.net/v2/jpg/03/15/48/57/1000_F_315485749_gOMS8KvxjYjN7vqK3jxgOXBn2RWTb9j8.jpg"),
              // ),
                    title: const Text('English'),
                    trailing: Radio(
                      value: 'en',
                      groupValue: selectedValue,
                      onChanged: (value) {
                        setState(() {
                          selectedValue = value!;
                          appLanguage.changeLanguage(const Locale("en"));
                        });

                      },

                    ),
                  ),
                  ListTile(
                    // leading:CircleAvatar(
                    //   backgroundImage: NetworkImage("https://m.media-amazon.com/images/I/31iFXzi5ylL._UF894,1000_QL80_.jpg"),
                    // ),
                    title: const Text('Portuguese'),
                    trailing: Radio(
                      value: 'pt',
                      groupValue: selectedValue,
                      onChanged: (value) {
                        setState(() {
                          selectedValue = value!;
                          appLanguage.changeLanguage(const Locale("pt"));

                        });

                      },
                    ),
                  ),
                  ListTile(
                    title: const Text('Spanish'),
                    trailing: Radio(
                      value: 'es',
                      groupValue: selectedValue,
                      onChanged: (value) {
                        setState(() {
                          selectedValue = value!;
                          appLanguage.changeLanguage(const Locale("es"));
                        });
                      },
                    ),
                  ),
                  ListTile(
                    title: const Text('French'),
                    trailing: Radio(
                      value: 'fr',
                      groupValue: selectedValue,
                      onChanged: (value) {
                        setState(() {
                          selectedValue = value!;
                          appLanguage.changeLanguage(const Locale("fr"));
                        });
                      },
                    ),
                  ),


                ],
              ),

            );
          },
        );
      },
    );
  }
  @override
  Widget build(BuildContext context) {
    appLanguage = Provider.of<AppLanguageProvider>(context);

    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          centerTitle: true,
         backgroundColor: AppColors.primaryColor,
          title:Text(AppLocalizations.of(context)!.translate('login')!, style: TextStyle(color: Colors.white),),
          //const Text('Settings'),
        ),
        body: SettingsList(
          darkTheme: const SettingsThemeData(
              settingsListBackground: AppColors.whiteColor,
              settingsSectionBackground: AppColors.whiteColor,),
          sections: [
            SettingsSection(
              title: const Text(
                 'Common',
                // size: 16,
                // weight: FontWeight.w700,
                // color: whiteColor,
              ),
              tiles: [
                SettingsTile(
                  title:  Text(AppLocalizations.of(context)!.translate('language')!),
                  leading: const Icon(Icons.language),
                  onPressed: (BuildContext context) {
                    showDialogFun();
                    // Handle the tile press
                  },

                ),
              ],
            ),
            SettingsSection(
              title: const Text(
                 'Account',
                // size: 16,
                // weight: FontWeight.w700,
                // color: whiteColor,
              ),
              tiles: [
                SettingsTile(
                  title:  Text(
                    // title: 'Profile',
                    AppLocalizations.of(context)!.translate('deleteAccount')!,

                  ),
                  leading: const Icon(Icons.person),
                  onPressed: (BuildContext context) {
                   // Get.to(() => DeleteAccountScreen());
                    // Handle the tile press
                  },
                ),
                SettingsTile(
                  title:   Text(
   AppLocalizations.of(context)!.translate('chPassword').toString(),
                    // size: 16,
                    // weight: FontWeight.w700,
                    // color: whiteColor,
                  ),
                  leading: const Icon(Icons.password),
                  onPressed: (BuildContext context) {
                   // Get.to(() => ResetPassword());
                  },
                ),
                SettingsTile(
                  title: Text(
                    AppLocalizations.of(context)!.translate('signOut').toString(),
                  ),
                  leading: const Icon(Icons.logout),
                  onPressed: (BuildContext context) async {

                  },
                ),
              ],
            ),
            SettingsSection(
              title:Text(
                AppLocalizations.of(context)!.translate('security').toString(),

              ),
              tiles: [
                SettingsTile(
                  title:Text(
                    AppLocalizations.of(context)!.translate('chPassword').toString(),

                  ),
                  leading: const Icon(Icons.lock),
                  onPressed: (BuildContext context) {
                    // Handle the tile press
                  },
                ),
                SettingsTile(
                  title:Text(
                    AppLocalizations.of(context)!.translate('editProfile').toString(),
                    // size: 16,
                    // weight: FontWeight.w700,
                    // color: whiteColor,
                  ),
                  leading: const Icon(Icons.verified_user),
                  onPressed: (BuildContext context) {
                    // Handle the tile press
                  },
                ),
              ],
            ),
            SettingsSection(
              title:Text(
                AppLocalizations.of(context)!.translate('info').toString(),

              ),
              tiles: [
                SettingsTile(
                  title:  Text(
                    AppLocalizations.of(context)!.translate('aboutUs').toString(),

                  ),
                  leading: const Icon(Icons.info),
                  onPressed: (BuildContext context) {
                    // Handle the tile press
                  },
                ),
                SettingsTile(
                  title:Text(
                    AppLocalizations.of(context)!.translate('contactUs').toString(),
                  ),
                  leading: const Icon(Icons.contact_page),
                  onPressed: (BuildContext context) {
                    // Handle the tile press
                  },
                ),
              ],
            ),
          ],
        ));
  }
}
