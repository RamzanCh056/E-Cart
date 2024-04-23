import 'package:ecartapp/screens/home_screen/tabs/favorite.dart';
import 'package:ecartapp/screens/home_screen/tabs/recent_contact_tab.dart';
import 'package:ecartapp/themes/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../themes/colors.dart';
import '../../animations/card_animation.dart';
import '../../language/app_localization.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool _toggler = true;
  int _curentIndex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        automaticallyImplyLeading: false,
        backgroundColor: AppColors.primaryColor,
        title: Text(
          AppLocalizations.of(context)!.translate('appBarText').toString(),
          style: AppTextStyles.textStyles.copyWith(color: AppColors.whiteColor, fontSize: 16),
        ),
        actions: [
          Row(
            children: [
              Text(
                AppLocalizations.of(context)!.translate('addaCard').toString(),
                style: AppTextStyles.textStyles.copyWith(color: AppColors.whiteColor, fontSize: 16),
              ),
              const SizedBox(width: 10), // Add some space between text and icon
              GestureDetector(
                onTap: () {
                  print("jsk");
                  messageBottomSheet(context);
                },
                child: const FaIcon(
                  FontAwesomeIcons.add,
                  color: Colors.white,
                  size: 20,
                ),
              ),
              const SizedBox(width: 10)
            ],
          ),
        ],
      ),

      backgroundColor:Colors.black12,
      //Color(0xFF171717),

      body  : Padding(
        padding: const EdgeInsets.all(12.0),
        child: ListView(
          children: [
            // Row(
            //   children: [
            //     Expanded(child: Text(appBarText,style: AppTextStyles.textStyles.copyWith(color: AppColors.blackColor,fontSize: 16),)),
            //     Text("Add Card",style: AppTextStyles.textStyles.copyWith(color: AppColors.blackColor,fontSize: 16),),
            //     const SizedBox(width: 8,),
            //     Container(
            //       decoration: const BoxDecoration(
            //         shape: BoxShape.circle,
            //         color:AppColors.primaryColor,
            //       ),
            //       height: 30,
            //       width: 30,
            //       child: const Center(child: FaIcon(FontAwesomeIcons.add, color: Colors.white,size: 20,),),
            //     ),
            //
            //
            //   ],
            // ),
            const SizedBox(height: 15,),
           GestureDetector(
             onTap: (){
             },
             onHorizontalDragEnd: (v) {
               setState(() {
                 _toggler = !_toggler;
               });
             },
             child: FlipCard(
                 toggler: _toggler,
                 frontCard: Container(
                   height: MediaQuery.sizeOf(context).height*0.28,
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(10),
                     color: Colors.deepPurple.shade400,
                   ),
                   child: Stack(
                     children: [

                       Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: Row(
                           children: [
                             ClipRRect(
                               borderRadius: BorderRadius.circular(8.0),
                               child: Image.network("https://t4.ftcdn.net/jpg/01/56/27/43/360_F_156274307_vvR5lO31LlIwtoFB1CC8jZtttlyQbK9M.jpg",  height: 180,
                                 width: 130, fit: BoxFit.cover,),
                             ),
                             const SizedBox(width: 10,),
                             Expanded(
                               child: Column(
                                 mainAxisAlignment: MainAxisAlignment.start,
                                 crossAxisAlignment: CrossAxisAlignment.start,
                                 children: [
                                   const SizedBox(height: 10,),
                                   Row(children: [
                                     Container(
                                       decoration: BoxDecoration(
                                         shape: BoxShape.circle,
                                         color: Colors.purple.withOpacity(0.3),
                                       ),
                                       height: 23,
                                       width: 23,
                                       child: const Center(child:  FaIcon(FontAwesomeIcons.person, color: Colors.white, size: 18,),),
                                     ),

                                     const SizedBox(width: 10,),
                                     Text("Ramzan Chaudhary",style: AppTextStyles.textStyles.copyWith(color: AppColors.whiteColor,fontSize: 14, fontWeight: FontWeight.bold, height: 1.3),),
                                   ],),
                                   const SizedBox(height: 5,),
                                   Row(
                                     children: [
                                       Container(
                                         decoration: BoxDecoration(
                                           shape: BoxShape.circle,
                                           color: Colors.purple.withOpacity(0.3),
                                         ),
                                         height: 23,
                                         width: 23,
                                         child: const Center(child:  FaIcon(Icons.work_history, color: Colors.white, size: 15,),),
                                       ),

                                       const SizedBox(width: 10,),
                                       Text("Software Engineer",style: AppTextStyles.textStyles.copyWith(color: AppColors.whiteColor,fontSize: 14,fontWeight: FontWeight.w500, height: 1.3 ),),
                                     ],
                                   ),
                                   const SizedBox(height: 5,),
                                   Row(
                                     children: [
                                       Container(
                                         decoration: BoxDecoration(
                                           shape: BoxShape.circle,
                                           color: Colors.purple.withOpacity(0.3),
                                         ),
                                         height: 23,
                                         width: 23,
                                         child: const Center(child:  Icon(Icons.work, color: Colors.white, size: 15,),),
                                       ),

                                       const SizedBox(width: 10,),
                                       Text("Company XYZ",style: AppTextStyles.textStyles.copyWith(color: AppColors.whiteColor,fontSize: 13, ),),
                                     ],
                                   ),
                                   const SizedBox(height: 5,),
                                   Row(
                                     children: [
                                       Container(
                                         decoration: BoxDecoration(
                                           shape: BoxShape.circle,
                                           color: Colors.purple.withOpacity(0.3),
                                         ),
                                         height: 23,
                                         width: 23,
                                         child: const Center(child:  Icon(Icons.email, color: Colors.white, size: 15,),),
                                       ),

                                       const SizedBox(width: 10,),
                                       Text("ramzan@gmail.com",style: AppTextStyles.textStyles.copyWith(color: AppColors.whiteColor,fontSize: 13, ),),
                                     ],
                                   ),
                                   const SizedBox(height: 5,),
                                   Row(
                                     children: [
                                       Container(
                                         decoration: BoxDecoration(
                                           shape: BoxShape.circle,
                                           color: Colors.purple.withOpacity(0.3),
                                         ),
                                         height: 23,
                                         width: 23,
                                         child: const Center(child:  FaIcon(FontAwesomeIcons.phone, color: Colors.white, size: 14,),),
                                       ),

                                       const SizedBox(width: 10,),
                                       Text("+923144876962",style: AppTextStyles.textStyles.copyWith(color: AppColors.whiteColor,fontSize: 13, ),),
                                     ],
                                   ),

                                  // const Expanded(child: SizedBox(height: 10,)),
                                   const SizedBox(height: 10,),
                                   Row(
                                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                     children: [
                                       Container(
                                         decoration: BoxDecoration(
                                           shape: BoxShape.circle,
                                           color: Colors.purple.withOpacity(0.4),
                                         ),
                                         height: 40,
                                         width: 40,
                                         child: const Center(child: FaIcon(FontAwesomeIcons.locationPin, color: Colors.white, size: 16,),),
                                       ),

                                       // Expanded(child: SizedBox(width: 5,)),
                                       Container(
                                         decoration: BoxDecoration(
                                           shape: BoxShape.circle,
                                           color: Colors.purple.withOpacity(0.4),
                                         ),
                                         height: 40,
                                         width: 40,
                                         child: const Center(child:   FaIcon(FontAwesomeIcons.whatsapp, color: Colors.green,), ),
                                       ),


                                       Container(
                                         decoration: BoxDecoration(
                                           shape: BoxShape.circle,
                                           color: Colors.purple.withOpacity(0.4),
                                         ),
                                         height: 40,
                                         width: 40,
                                         child: const Center(child:   FaIcon(FontAwesomeIcons.linkedinIn, color: Colors.blue, size: 20,), ),
                                       ),

                                       Container(
                                         decoration: BoxDecoration(
                                           shape: BoxShape.circle,
                                           color: Colors.purple.withOpacity(0.4),
                                         ),
                                         height: 40,
                                         width: 40,
                                         child: const Center(child:   FaIcon(FontAwesomeIcons.instagram, color: Colors.redAccent, size: 20,), ),
                                       ),

                                     ],
                                   ),
                                   // Expanded(child: SizedBox(height: 2,)),
                                 ],),
                             )


                           ],),
                       ),
                     ],
                   ),
                 ) ,
                 backCard:  Container(
                   padding: const EdgeInsets.all(15),
                   height: MediaQuery.of(context).size.height * 0.28,
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(10),
                     color: Colors.deepPurple.shade400,
                   ),
                   child: Column(
                     children: [
                       Flexible(
                         child: Row(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             ClipRRect(
                               borderRadius: BorderRadius.circular(8.0),
                               child: Image.network(
                                 "https://www.dummies.com/wp-content/uploads/324172.image0.jpg",
                                 height: 143,
                                 width: 138,
                                 fit: BoxFit.cover,
                               ),
                             ),
                             const SizedBox(width: 10),
                             Expanded(
                               child: Column(
                                 crossAxisAlignment: CrossAxisAlignment.start,
                                 children: [
                                   const SizedBox(height: 10),
                                   Flexible(
                                     child: Text(
                                       "Empowering innovation through cutting-edge software solutions. We turn ideas into reality, one line of code at a time we will provide top.",
                                       style: AppTextStyles.textStyles.copyWith(color: AppColors.whiteColor, fontSize: 14,fontWeight: FontWeight.w500  ),
                                       // textAlign: TextAlign.start
                                     ),
                                   ),
                                 ],
                               ),
                             ),
                           ],
                         ),
                       ),
                       const SizedBox(height: 10,),
                       Row(
                         mainAxisAlignment: MainAxisAlignment.end,
                         children: [
                           Container(
                             decoration: BoxDecoration(
                               shape: BoxShape.circle,
                               color: Colors.white.withOpacity(0.6),
                             ),
                             height: 40,
                             width: 40,
                             child: const Center(child: FaIcon(Icons.favorite, color: Colors.redAccent, size: 20,),),
                           ),
                           const SizedBox(width: 20,),
                           // Expanded(child: SizedBox(width: 5,)),
                           Container(
                             decoration: BoxDecoration(
                               shape: BoxShape.circle,
                               color: Colors.white.withOpacity(0.6),
                             ),
                             height: 40,
                             width: 40,
                             child: const Center(child:   FaIcon(FontAwesomeIcons.share, color: Colors.green,), ),
                           ),
                           const SizedBox(width: 10,),



                         ],
                       ),
                     ],
                   ),
                 )

             ),
           ),

            // Container(
            //   padding: const EdgeInsets.all(15),
            //   height: MediaQuery.sizeOf(context).height*0.25,
            //   decoration: BoxDecoration(
            //       borderRadius: BorderRadius.circular(10),
            //       color: AppColors.lightGrey,
            //       border: Border.all(color: AppColors.primaryColor)
            //   ),
            //   child: Column(
            //     crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center,
            //     children: [
            //       const Icon(Icons.add,color: AppColors.primaryColor,size: 20,),
            //       const SizedBox(height: 10,),
            //       Text(addCard,style: AppTextStyles.textStyles.copyWith(color: AppColors.primaryColor,fontSize: 14),),
            //
            //     ],
            //   ),
            // ),

            const SizedBox(height: 20,),
            SizedBox(
              height: 50,
              child:

              TextFormField(
                decoration: InputDecoration(
                  hintText:AppLocalizations.of(context)!.translate('searchContact').toString(),
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
            Container(

              width: MediaQuery.sizeOf(context).width*1,
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
                        _curentIndex=0;
                      });
                    },
                    child: Container(

                      padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 13),
                      width: MediaQuery.sizeOf(context).width*0.45,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: _curentIndex==0?AppColors.primaryColor:AppColors.lightGrey
                      ),
                      child: Center(
                        child: Text(AppLocalizations.of(context)!.translate('recentScan')!,style: AppTextStyles.textStyles.copyWith(color: _curentIndex==0?AppColors.whiteColor:AppColors.fontGrey,fontSize: 14,fontWeight: FontWeight.w500,),
                      ),
                    ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          _curentIndex=1;
                        });
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 13),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: _curentIndex==1?AppColors.primaryColor:AppColors.lightGrey
                        ),
                        child: Center(
                          child: Text(AppLocalizations.of(context)!.translate('favorite')!,style: AppTextStyles.textStyles.copyWith(color: _curentIndex==1?AppColors.whiteColor:AppColors.fontGrey,fontSize: 14,fontWeight: FontWeight.w500,),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20,),
            _curentIndex==0?const RecentContactTab():const FavoriteTab()


          ],
        ),
      ),
    );
  }
  messageBottomSheet(context) {
    showModalBottomSheet(
        constraints:
        BoxConstraints(minHeight: MediaQuery.of(context).size.height / 2),
        context: context,
        backgroundColor:  AppColors.lightGrey,
        isScrollControlled: true,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(17), topLeft: Radius.circular(17)),
        ),
        builder: (BuildContext bc) {
          return StatefulBuilder(
            builder: (context, setState) => Container(
              height: MediaQuery.of(context).size.height - 150,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                          border: Border.symmetric(
                              horizontal:
                              BorderSide(color: Colors.grey, width: 0.6))),
                      child: Wrap(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                InkWell(
                                  onTap: (){
                                    Navigator.pop(context);
                                  },
                                  child: const Row(mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                    FaIcon(
                                      FontAwesomeIcons.close,
                                      color: Colors.black,
                                      size: 24,
                                    ),
                                  ],),
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                
                                        Text(
                                      AppLocalizations.of(context)!.translate('addaCard').toString(),
                                          style: AppTextStyles.textStyles.copyWith(color: AppColors.blackColor, fontSize: 20),
                                        ),
                                      ],),
                
                             Padding(
                               padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                               child: Column(children: [
                                 const SizedBox(height: 10,),
                                 Container(
                                   padding: const EdgeInsets.all(15),
                                   height:90,
                                   width: double.infinity,
                                   decoration: BoxDecoration(
                                       borderRadius: BorderRadius.circular(10),
                                       color: AppColors.lightGrey,
                                       border: Border.all(color: AppColors.primaryColor)
                                   ),
                                   child: Column(
                                     crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center,
                                     children: [
                                       const Icon(Icons.add,color: AppColors.primaryColor,size: 20,),
                                       const SizedBox(height: 10,),
                                       Text( AppLocalizations.of(context)!.translate('addPhoto').toString(),style: AppTextStyles.textStyles.copyWith(color: AppColors.primaryColor,fontSize: 14),),
                
                                     ],
                                   ),
                                 ),
                                 const SizedBox(height: 15,),
                                 TextFormField(
                                   decoration: InputDecoration(
                                     hintText: AppLocalizations.of(context)!.translate('enterName').toString(),
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
                                   decoration: InputDecoration(
                                     hintText: AppLocalizations.of(context)!.translate('enterEmail').toString(),
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
                                 TextFormField(
                                   decoration: InputDecoration(
                                     hintText: AppLocalizations.of(context)!.translate('enterPhone').toString(),
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
                                   decoration: InputDecoration(
                                     hintText: AppLocalizations.of(context)!.translate('enterCompany').toString(),
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
                                   maxLines: 2,
                                   decoration: InputDecoration(
                
                                     hintText: AppLocalizations.of(context)!.translate('aboutCompany').toString(),
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
                                       child: Text( AppLocalizations.of(context)!.translate('add').toString(),style: AppTextStyles.textStyles.copyWith(color:AppColors.whiteColor,fontSize: 14,fontWeight: FontWeight.w500,),
                                       ),
                                     ),
                                   ),
                                 ),
                               ],),
                             )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                
                  ],
                ),
              ),
            ),
          );
        });
  }
}
