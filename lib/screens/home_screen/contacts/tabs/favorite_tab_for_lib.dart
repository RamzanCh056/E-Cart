import 'package:flutter/material.dart';

import '../../../../language/app_localization.dart';
import '../../../../themes/colors.dart';
import '../../../../themes/text_styles.dart';
class FavoriteTabForLib extends StatelessWidget {
  const FavoriteTabForLib({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center,children: [
      const SizedBox(height: 30,),
      const Icon(Icons.favorite_border,size: 80,color: AppColors.primaryColor,),
      const SizedBox(height: 20,),
      Text(AppLocalizations.of(context)!.translate('noFavoriteYet')!,style: AppTextStyles.textStyles.copyWith(color: AppColors.fontGrey,fontSize: 14),),
      const SizedBox(height: 15,),
    ],
    );
  }
}
