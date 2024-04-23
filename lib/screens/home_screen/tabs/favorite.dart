import 'package:flutter/material.dart';

import '../../../../themes/colors.dart';
import '../../../../themes/text_styles.dart';
import '../../../language/app_localization.dart';

class FavoriteTab extends StatelessWidget {
  const FavoriteTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center,children: [
      const SizedBox(height: 30,),

      const Icon(Icons.favorite_border,size: 80,color: AppColors.primaryColor,),
      const SizedBox(height: 20,),
      Text(AppLocalizations.of(context)!.translate('noFavoriteYet')!,style: AppTextStyles.textStyles.copyWith(color: AppColors.fontGrey,fontSize: 14),),
      const SizedBox(height: 15,),
      // GestureDetector(
      //   onTap: (){
      //
      //
      //   },
      //   child: Container(
      //
      //     padding: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
      //     width: MediaQuery.sizeOf(context).width*0.45,
      //     decoration: BoxDecoration(
      //         borderRadius: BorderRadius.circular(10),
      //         color:AppColors.primaryColor
      //     ),
      //     child: Center(
      //       child: Text(goToLibrary,style: AppTextStyles.textStyles.copyWith(color:AppColors.whiteColor,fontSize: 14,fontWeight: FontWeight.w500,),
      //       ),
      //     ),
      //   ),
      // ),
    ],
    );
  }
}
