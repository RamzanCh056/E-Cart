import 'package:ecartapp/themes/colors.dart';
import 'package:flutter/material.dart';

import '../../../../language/app_localization.dart';
import '../../../../themes/text_styles.dart';

class AllTab extends StatelessWidget {
  const AllTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center,children: [
      const SizedBox(height: 30,),

      const Icon(Icons.add_card_rounded,size: 80,color: AppColors.primaryColor,),
      const SizedBox(height: 20,),
      Text(AppLocalizations.of(context)!.translate('cardEmpty')!,style: AppTextStyles.textStyles.copyWith(color: AppColors.fontGrey,fontSize: 14),),
      const SizedBox(height: 15,),

    ],
    );
  }
}
