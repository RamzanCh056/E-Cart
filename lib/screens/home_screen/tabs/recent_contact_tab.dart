import 'package:ecartapp/themes/colors.dart';
import 'package:flutter/material.dart';

import '../../../../themes/text_styles.dart';
import '../../../language/app_localization.dart';

class RecentContactTab extends StatelessWidget {
  const RecentContactTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center,children: [
      const SizedBox(height: 30,),

        const Icon(Icons.add_card_rounded,size: 80,color: AppColors.primaryColor,),
      const SizedBox(height: 20,),
      Text(AppLocalizations.of(context)!.translate('cardEmpty')!,style: AppTextStyles.textStyles.copyWith(color: AppColors.fontGrey,fontSize: 14),),
      const SizedBox(height: 15,),
      GestureDetector(
        onTap: (){


        },
        child: Container(

          padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
          width: MediaQuery.sizeOf(context).width*0.45,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color:AppColors.primaryColor
          ),
          child: Center(
            child: Text(AppLocalizations.of(context)!.translate('startScan')!,style: AppTextStyles.textStyles.copyWith(color:AppColors.whiteColor,fontSize: 14,fontWeight: FontWeight.w500,),
            ),
          ),
        ),
      ),

    ],
    );
  }
}
