import 'package:ecartapp/screens/my_cards/edit_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../animations/card_animation.dart';
import '../../language/app_localization.dart';
import '../../themes/colors.dart';
import '../../themes/text_styles.dart';
class MyCardScreen extends StatefulWidget {
  const MyCardScreen({Key? key}) : super(key: key);

  @override
  State<MyCardScreen> createState() => _MyCardScreenState();
}

class _MyCardScreenState extends State<MyCardScreen> {

  List<bool> _toggler = [];
  List<bool> isFav = [];
  List <String> name = [
    "Ramzan Chaudhary",
    "Ali Akbar",
    "John Elia",
    "Fahad ali",

  ];
  List <String> image = [
    "https://t4.ftcdn.net/jpg/01/56/27/43/360_F_156274307_vvR5lO31LlIwtoFB1CC8jZtttlyQbK9M.jpg",
    "https://static.vecteezy.com/system/resources/previews/029/283/190/non_2x/ai-generative-business-man-in-a-suit-white-transparent-background-free-photo.jpg",
    "https://static.vecteezy.com/system/resources/previews/029/331/813/non_2x/ai-generative-business-man-in-a-suit-white-transparent-background-free-photo.jpg",
    "https://media.istockphoto.com/id/1386217759/photo/portrait-of-a-confident-young-businesswoman-standing-against-an-urban-background.jpg?s=612x612&w=0&k=20&c=fAzBj4UAksz3wwAjXxKxByZMqDSuqQZSTij7jBiPtJc=",

  ];
  List <String> about = [
    "Empowering innovation through cutting-edge software solutions. We turn ideas into reality, one line of code at a time we will provide top.",
    "Empowering innovation through cutting-edge software solutions. We turn ideas into reality, one line of code at a time we will provide top.",
    "Empowering innovation through cutting-edge software solutions. We turn ideas into reality, one line of code at a time we will provide top.",
    "Empowering innovation through cutting-edge software solutions. We turn ideas into reality, one line of code at a time we will provide top.",
  ];

  List <String> company = [
    "Company XYZ",
    "Google office",
    "Amazon limited",
    "Rvi autos",

  ];
  List <String> email = [
    "ramzan@gmail.com",
    "company@gmail.com",
    "google@gmail.com",
    "Ravi@gmail.com",

  ];
  List<Color> colors = [
    Colors.deepPurple.shade400,
    Colors.brown.shade300,
    Colors.blueAccent.shade400,
    Colors.green.shade300,
  ];
  @override
  void initState() {
    super.initState();
    _toggler = List.generate(name.length, (index) => true);
    isFav = List.generate(name.length, (index) => false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        backgroundColor: AppColors.primaryColor,
        title: Text(
          AppLocalizations.of(context)!.translate('myCard').toString(),
          style: AppTextStyles.textStyles.copyWith(color: AppColors.whiteColor, fontSize: 16),
        ),

      ),

      backgroundColor:Colors.black12,

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: ListView.builder(
          itemCount: name.length,
          itemBuilder: (context , index){
            return  Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>EditCard(picture: image[index], name: name[index], phone: "+923144876962", company: company[index], about:about[index] ,email: email[index],)));
                },
                onHorizontalDragEnd: (v) {
                  setState(() {
                    _toggler[index] = !_toggler[index];
                  });
                },
                child: FlipCard(
                    toggler: _toggler[index],
                    frontCard: Container(
                      // padding: const EdgeInsets.all(15),
                      height: MediaQuery.sizeOf(context).height*0.27,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: colors[index],
                      ),
                      child: Stack(
                        children: [
                          //
                          const Padding(
                            padding: EdgeInsets.all(4.0),
                            child: Align(
                              alignment: Alignment.topRight,

                                child:Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    FaIcon(Icons.edit, color: Colors.red,size: 24,),

                                    SizedBox(width: 5,),
                                    FaIcon(Icons.delete, color: Colors.red,size: 24,),
                                  ],
                                )),
                          ),
                           const SizedBox(height: 5,),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                ClipRRect(

                                  borderRadius: BorderRadius.circular(8.0),
                                  child: Image.network(image[index],  height: 180,
                                    width: 128, fit: BoxFit.cover,),
                                ),
                                const SizedBox(width: 9,),
                                Expanded(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      const SizedBox(height: 25,),
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
                                        Text(name[index],style: AppTextStyles.textStyles.copyWith(color: AppColors.whiteColor,fontSize: 14, fontWeight: FontWeight.bold, height: 1.3),),
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
                                            child: const Center(child:  Icon(Icons.work, color: Colors.white, size: 15,),),
                                          ),

                                          const SizedBox(width: 10,),
                                          Text(company[index],style: AppTextStyles.textStyles.copyWith(color: AppColors.whiteColor,fontSize: 13, ),),
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
                                          Text(email[index],style: AppTextStyles.textStyles.copyWith(color: AppColors.whiteColor,fontSize: 13, ),),
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
                                            height: 38,
                                            width: 38,
                                            child: const Center(child: FaIcon(FontAwesomeIcons.locationPin, color: Colors.white, size: 16,),),
                                          ),
                                          Container(
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: Colors.purple.withOpacity(0.4),
                                            ),
                                            height: 38,
                                            width: 38,
                                            child: const Center(child:   FaIcon(FontAwesomeIcons.whatsapp, color: Colors.green,), ),
                                          ),
                                          Container(
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: Colors.purple.withOpacity(0.4),
                                            ),
                                            height: 38,
                                            width: 38,
                                            child: const Center(child:   FaIcon(FontAwesomeIcons.linkedinIn, color: Colors.blue, size: 20,), ),
                                          ),
                                          Container(
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: Colors.purple.withOpacity(0.4),
                                            ),
                                            height: 38,
                                            width: 38,
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
                      height: MediaQuery.of(context).size.height * 0.27,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: colors[index],
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
                              GestureDetector(
                                onTap: (){
                                  setState(() {
                                    isFav[index] = !isFav[index];
                                  });
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white.withOpacity(0.6),
                                  ),
                                  height: 40,
                                  width: 40,
                                  child:

                                Center(child: FaIcon(   isFav[index]==true?    Icons.favorite :   Icons.favorite_outline ,color: Colors.redAccent, size: 20,),),
                                ),
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
            );
          },

        ),
      ),
    );
  }
}
