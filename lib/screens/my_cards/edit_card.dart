
import 'package:flutter/material.dart';

import '../../language/app_localization.dart';
import '../../themes/colors.dart';
import '../../themes/text_styles.dart';
class EditCard extends StatefulWidget {
   EditCard({ required this.picture ,required this.name,  required this.phone,required this.company,required this.about,  required this.email,Key? key}) : super(key: key);
   String picture , name, phone, company, about , email;
  @override
  State<EditCard> createState() => _EditCardState();
}

class _EditCardState extends State<EditCard> {
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController companyName = TextEditingController();
  TextEditingController aboutCompany = TextEditingController();
  String? picture;
  @override
  void initState() {
    picture = widget.picture;
    name.text = widget.name;
    phone.text = widget.phone;
    companyName.text = widget.company;
    aboutCompany.text = widget.about;
    email.text = widget.email;
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: true,
        backgroundColor: AppColors.primaryColor,
        title: Text(
          widget.name,
          style: AppTextStyles.textStyles.copyWith(color: AppColors.whiteColor, fontSize: 16),
        ),

      ),

   //

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: ListView(children: [
          const SizedBox(height: 10,),
          Container(
            padding: const EdgeInsets.all(15),
            height:180,
            width: 180,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(widget.picture,),
                fit: BoxFit.fill,
              ),
                borderRadius: BorderRadius.circular(20),
                color: AppColors.lightGrey,
                border: Border.all(color: AppColors.primaryColor)
            ),
            child: const Column(
             // crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center,
              children: [
               Row(
                 mainAxisAlignment: MainAxisAlignment.end,
                 children: [
                   Icon(Icons.add,color: AppColors.primaryColor,size: 20,),
                 ],
               ),
                SizedBox(height: 10,),


              ],
            ),
          ),
          const SizedBox(height: 15,),
          TextFormField(
            controller: name,
            decoration: InputDecoration(

              hintText:AppLocalizations.of(context)!.translate('enterName').toString(),
              fillColor: AppColors.whiteColor,filled: true,
              hintStyle: AppTextStyles.textStyles.copyWith(color: AppColors.fontGrey,fontSize: 14,),
              prefixIcon:  const Icon(Icons.person,color: AppColors.fontGrey,),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide:   BorderSide.none),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide.none
              ),

            ),
          ),
          const SizedBox(height: 10,),
          TextFormField(
            controller: email,
            decoration: InputDecoration(
              hintText:AppLocalizations.of(context)!.translate('enterEmail')!,
              fillColor: AppColors.whiteColor,filled: true,
              hintStyle: AppTextStyles.textStyles.copyWith(color: AppColors.fontGrey,fontSize: 14,),
              prefixIcon:  const Icon(Icons.email,color: AppColors.fontGrey,),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide:   BorderSide.none),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide.none
              ),

            ),
          ),
          const SizedBox(height: 10,),
          TextFormField(controller: phone,
            decoration: InputDecoration(
              hintText:AppLocalizations.of(context)!.translate('enterPhone').toString(),
              fillColor: AppColors.whiteColor,filled: true,
              hintStyle: AppTextStyles.textStyles.copyWith(color: AppColors.fontGrey,fontSize: 14,),
              prefixIcon:  const Icon(Icons.phone,color: AppColors.fontGrey,),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide:   BorderSide.none),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide.none
              ),

            ),
          ),
          const SizedBox(height: 10,),
          TextFormField(
            controller: companyName,
            decoration: InputDecoration(
              hintText:AppLocalizations.of(context)!.translate('enterCompany')!,
              fillColor: AppColors.whiteColor,filled: true,
              hintStyle: AppTextStyles.textStyles.copyWith(color: AppColors.fontGrey,fontSize: 14,),
              prefixIcon:  const Icon(Icons.work_history,color: AppColors.fontGrey,),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide:   BorderSide.none),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide.none
              ),

            ),
          ),
          const SizedBox(height: 10,),
          TextFormField(
            controller: aboutCompany,
            maxLines: 2,
            decoration: InputDecoration(

              hintText:AppLocalizations.of(context)!.translate('aboutCompany')!,
              fillColor: AppColors.whiteColor,filled: true,
              hintStyle: AppTextStyles.textStyles.copyWith(color: AppColors.fontGrey,fontSize: 14,),
              prefixIcon:  const Icon(Icons.work_history,color: AppColors.fontGrey,),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide:   BorderSide.none),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide.none
              ),

            ),
          ),
          const SizedBox(height: 20,),
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
                child: Text(AppLocalizations.of(context)!.translate('edit')!,style: AppTextStyles.textStyles.copyWith(color:AppColors.whiteColor,fontSize: 14,fontWeight: FontWeight.w500,),
                ),
              ),
            ),
          ),
        ],),
      ),
    );
  }
}
