import 'package:ecartapp/screens/home_screen/contacts/tabs/all_tab.dart';
import 'package:ecartapp/screens/home_screen/contacts/tabs/favorite_tab_for_lib.dart';
import 'package:flutter/material.dart';
import '../../../language/app_localization.dart';
import '../../../themes/colors.dart';
import '../../../themes/text_styles.dart';

class LibraryScreen extends StatefulWidget {
  const LibraryScreen({super.key});

  @override
  State<LibraryScreen> createState() => _LibraryScreenState();
}

class _LibraryScreenState extends State<LibraryScreen> {

  int _currentIndexOne=0;
  int _currentIndex=0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
      child: Scaffold(
        backgroundColor: AppColors.whiteColor,
        appBar: AppBar(
          backgroundColor: AppColors.whiteColor,
          centerTitle: true,
          elevation: 0,title:
        Text(AppLocalizations.of(context)!.translate('library')!,style: AppTextStyles.textStyles.copyWith(color: AppColors.fontGrey,fontSize: 14),),
        ),
        body  : ListView(
          children: [

            SizedBox(
              height: 50,
              child:
              TextFormField(
                decoration: InputDecoration(
                  hintText:AppLocalizations.of(context)!.translate('searchContact')!,
                  fillColor: AppColors.lightGrey,filled: true,
                  hintStyle: AppTextStyles.textStyles.copyWith(color: AppColors.fontGrey,fontSize: 14,),
                  prefixIcon:  const Icon(Icons.search,color: AppColors.fontGrey,),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide:   BorderSide.none),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide.none
                  ),

                ),
              ),
            ),
            const SizedBox(height: 25,),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width:MediaQuery.sizeOf(context).width*0.70,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: AppColors.lightGrey
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            _currentIndex=0;
                          });
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 13),
                          width: MediaQuery.sizeOf(context).width*0.35,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: _currentIndex==0?AppColors.primaryColor:AppColors.lightGrey
                          ),
                          child: Center(
                            child: Text(AppLocalizations.of(context)!.translate('all')!,style: AppTextStyles.textStyles.copyWith(color: _currentIndex==0?AppColors.whiteColor:AppColors.fontGrey,fontSize: 14,fontWeight: FontWeight.w500,),
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            _currentIndex=1;
                          });
                        },
                        child: Container(
                          width: MediaQuery.sizeOf(context).width*0.35,
                          padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 13),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: _currentIndex==1?AppColors.primaryColor:AppColors.lightGrey
                          ),
                          child: Center(
                            child: Text(AppLocalizations.of(context)!.translate('favorite')!,style: AppTextStyles.textStyles.copyWith(color: _currentIndex==1?AppColors.whiteColor:AppColors.fontGrey,fontSize: 14,fontWeight: FontWeight.w500,),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 10,),
                Container(

                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: AppColors.lightGrey
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            _currentIndexOne=0;
                          });
                        },
                        child: Container(

                          padding: const EdgeInsets.symmetric(horizontal:5 ,vertical: 10),

                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color:   _currentIndexOne==0?AppColors.primaryColor:AppColors.lightGrey
                          ),
                          child: Center(
                            child: Icon(Icons.list,color:  _currentIndexOne==0?AppColors.whiteColor:AppColors.fontGrey,),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            _currentIndexOne=1;
                          });
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 5 ,vertical: 10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color:   _currentIndexOne==1?AppColors.primaryColor:AppColors.lightGrey
                          ),
                          child: Center(
                            child: Icon(Icons.dashboard_outlined,color: _currentIndexOne==1?AppColors.whiteColor:AppColors.fontGrey ,),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20,),

            _currentIndex==0?const AllTab():const FavoriteTabForLib()


          ],
        ),
      ),
    );
  }
}
